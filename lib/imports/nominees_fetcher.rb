require "open-uri"
require "typhoeus"
require "nokogiri"
require "active_record"
require "pg"

class NomineesFetcher

  def self.test_method
    puts 'success'
  end

  def self.mcountdown_nominees_and_votes
    log = Logger.new(STDOUT)

    url = "http://mwave.interest.me/mcountdown/vote/preVote"
    doc = Nokogiri::HTML(open(url))
    time_now = Time.now.in_time_zone("Seoul")
    formatted_time_now = time_now.strftime("%Y-%m-%d")
    result = Array.new

    #get voting period
    vote_start_raw = doc.css('strong')[0].to_s[30..37]
    vote_start = DateTime.parse(vote_start_raw).strftime("%Y-%m-%d")
    vote_end_raw = doc.css('strong')[0].to_s[47..54]
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

      nominees_list = doc.css('.voteWeekList li')
      nominees_list.each do |record|
        
        artiste = record.css('dd.artist a')
        artiste_name = artiste.text.strip
        song_name = record.css('dl .title a').text.strip
        mcountdown_votes = record.css('dl .per').text.strip.gsub( /%/, "")

        #insert artiste's profile image if not yet available
        artiste_array = Artiste.where(:mcountdown => artiste_name)
        if artiste_array.empty?
          m_artiste_id = artiste.first.attributes["onclick"].value.split("\'")[1]
          artiste_url = "http://mwave.interest.me/en/kstar/#{m_artiste_id}/dummy"
  
          if Typhoeus.get(artiste_url).response_code == 404
            artiste_profile_img = 'no available image'
          else
            artiste_doc = Nokogiri::HTML(open(artiste_url))
            if artiste_doc.css('#lnb .thumb img').empty?
              artiste_profile_img = 'no available image'
            else
              artiste_profile_img = artiste_doc.css('#lnb .thumb img').first.attributes["src"].value
            end
          end

          log.info("Inserting profile image for #{artiste_name} into Artiste relation")
          artiste_id = Artiste.where(:mcountdown => artiste_name)
                                .first_or_create(profile_img: artiste_profile_img,
                                                 mcountdown: artiste_name
                                                 ).id
        else
          artiste_id = artiste_array[0].id
        end

        #insert album's profile image if not yet available
        #necessary to check for song + artiste
        #since multiple songs can have the same name
        song_array = Song.where(:mcountdown => song_name,
                                :artiste_id => artiste_id
                                )
        if song_array.empty?
          m_album_id = record.css('dt a').first.attributes["onclick"].value.split("\'")[1]
          album_url = "http://mwave.interest.me/en/album/album.m?searchAlbumVO.album_id=#{m_album_id}"
  
          if Typhoeus.get(album_url).response_code == 404
            album_profile_img = 'no available image'
          else
            album_doc = Nokogiri::HTML(open(album_url))
            if album_doc.css('.AlbumThumbWrapInner img').empty?
              album_profile_img = 'no available image'
              album_name = artiste_name + ', ' + song_name
            else
              album_profile_img = album_doc.css('.AlbumThumbWrapInner img').first.attributes["src"].value 
              album_name = album_doc.css('.AlbumThumbWrapInner img').first.attributes["alt"].value
            end
          end
  
          log.info("Inserting profile image for #{album_name} into Album relation")
          album_id = Album.where(:mcountdown => album_name)
                          .first_or_create(profile_img: album_profile_img,
                                           mcountdown: album_name
                                           ).id
        else
          album_id = song_array[0].album_id
        end

        log.info("Inserting #{song_name} into Song relation")
        song_id = Song.where(:mcountdown => song_name,
                             :artiste_id => artiste_id,
                             :album_id => album_id
                             )
                      .first_or_create(mcountdown: song_name,
                                       artiste_id: artiste_id,
                                       album_id: album_id
                                       ).id

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
