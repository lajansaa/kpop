require "open-uri"
require "typhoeus"
require "nokogiri"
require "active_record"
require "pg"
require "watir"

class NomineesFetcher

  def self.mcountdown_nominees_and_votes
    log = Logger.new(STDOUT)

    url = "https://www.mwave.me/en/mcountdown/prevoting/result"
    browser = Watir::Browser.new :chrome, headless: true
    browser.goto url
    sleep 5
    doc = Nokogiri::HTML.parse(browser.html)
    
    time_now = Time.now.in_time_zone("Seoul")
    formatted_time_now = time_now.strftime("%Y-%m-%d")

    #get voting period
    vote_start_raw = doc.css('.h3_info').text.slice(0,12)
    vote_start = DateTime.parse(vote_start_raw).strftime("%Y-%m-%d")
    vote_end_raw = doc.css('.h3_info').text.slice(15,12)
    vote_end = DateTime.parse(vote_end_raw).strftime("%Y-%m-%d")

    log.info("Inserting nomination cycle #{vote_start} to #{vote_end} into Nomination Cycle relation")
    nomination_cycle = NominationCycle.where(:start_date => vote_start)

    cycle_id = nomination_cycle.first_or_create(
                 award_id: 1,
                 start_date: vote_start,
                 end_date: vote_end,
                 period_type: "week"
                ).id

    if time_now >= vote_start && time_now < vote_end
      nominees_list = doc.css('#resultList li')
      nominees_list.each do |record|
        artiste_name = record.css('.info_box .txt').text
        song_name = record.css('.info_box .tit').text
        mcountdown_votes = record.css('.percent_box .txt').text.gsub( /%/, "")
        album_url = record.css('img').attr('src').value

        #insert artiste's profile image if not yet available
        artiste_id = Artiste.where(:mcountdown => artiste_name)
                            .first_or_create(profile_img: album_url,
                                             mcountdown: artiste_name
                                             ).id

        #insert album's profile image if not yet available
        #necessary to check for song + artiste
        #since multiple songs can have the same name
        song = Song.find_by(:mcountdown => song_name,
                            :artiste_id => artiste_id
                            )
        if song.nil?
          album_id = Album.create(:mcountdown => song_name,
                                  :profile_img => album_url
                                 ).id
          song_id = Song.create(:mcountdown => song_name,
                                :artiste_id => artiste_id,
                                :album_id => album_id
                               ).id
        else
          song_id = song.id
        end

        log.info("Updating mcountdown_votes for #{artiste_name}'s nominated #{song_name}")
        McountdownVote.where(:date_d => formatted_time_now,
                               :artiste_id => artiste_id,
                               :song_id => song_id
                               )
                      .first_or_create(date_d: formatted_time_now,
                                       artiste_id: artiste_id,
                                       song_id: song_id,
                                       mcountdown_votes: mcountdown_votes
                                       )
                      .update(mcountdown_votes: mcountdown_votes)

        log.info("Inserting #{artiste_name}'s nominated #{song_name} into Nominee relation")
        Nominee.where(:cycle_id => cycle_id,
                        :artiste_id => artiste_id,
                        :song_id => song_id
                        )
               .first_or_create(:cycle_id => cycle_id,
                                :artiste_id => artiste_id,
                                :song_id => song_id
                                )
      end
    else

      return "Voting period ended, updating aborted"
        
    end   
  end
end
