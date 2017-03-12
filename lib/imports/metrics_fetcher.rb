require "open-uri"
require "csv"
require "json"
require "typhoeus"
require "nokogiri"
require "active_record"
require "postgres-copy"
require "pg"
require "pry"

class MetricsFetcher

  def self.popularity_votes
    url = "http://mwave.interest.me/mcountdown/vote/preVote"
    
    doc = Nokogiri::HTML(open(url))
    result = Array.new

    #get voting period
    vote_start_raw = doc.css('strong')[0].to_s[30..37]
    vote_start = DateTime.parse(vote_start_raw).strftime("%Y-%m-%d")
    vote_end_raw = doc.css('strong')[0].to_s[47..54]
    vote_end = DateTime.parse(vote_end_raw).strftime("%Y-%m-%d")
    
    if Time.now.in_time_zone("Seoul") > vote_end
      #top 3 artiste
      top3_html_code = doc.css('.top3')[0].to_s
      top3_doc = Nokogiri::HTML(top3_html_code)
      top_record = top3_doc.xpath('//dd')
      i = 0
      artiste = ""
      song = ""
      votes = 0
      top_record.each do |record|
        item_str = record.content.strip.gsub( /\s+/, " " ).gsub( /%/, "")
        if item_str != "Play"
          if i % 2 == 0
            item_split = item_str.split('/')
            song = item_split[0].strip
            artiste = item_split[1].strip
          else 
            votes = item_str
            result.push([ artiste, song, votes ])
          end
          i += 1
        end
      end

      #rest of the artistes
      artistes_doc = doc.css('dd.artist')
      songs_doc = doc.css('li dl .title a')[6..-1]
      votes_doc = doc.css('li dl .per')[3..-1]
      
      for i in 0..artistes_doc.length()-1
        result.push([ artistes_doc[i].content.strip, songs_doc[i].content.strip, votes_doc[i].content.strip.gsub( /%/, "") ])
      end 
    else
      record_array = doc.css('.voteWeekList li')
      record_array.each do |record|
        result.push([ record.css('dd.artist a').text.strip, record.css('dl .title a').text.strip, record.css('dl .per').text.strip.gsub( /%/, "") ])
      end
    end
    
    CSV.open('./lib/imports/popularity_votes.csv', 'wb') do |csv|
      headers = ["vote_start", "vote_end", "award", "artiste", "song", "votes", "created_at", "updated_at"]
      csv << headers
      result.each do |record|
        # #standardise artiste and song names across metrics tables
        # match_result = Mapping.find { |map| record[0] == map.mnet_artiste && record[1] == map.mnet_song }
        csv << [vote_start, vote_end, "MCOUNTDOWN", record[0], record[1], record[2], Time.now, Time.now]
      end
    end
  end

  def self.youtube_views
    api_key = ENV['GOOGLE_API_KEY']
    log = Logger.new(STDOUT)
    
    max_vote_start = PopularityVote.maximum("vote_start")
    nominees_array = PopularityVote.all.where("vote_start = '#{max_vote_start}'")
    
    CSV.open('./lib/imports/youtube_views.csv', 'wb') do |csv|
      headers = ["vote_start", "vote_end", "award", "artiste", "song", "views", "created_at", "updated_at"]
      csv << headers
      nominees_array.each do |n|
        vote_start = n.vote_start
        vote_end = n.vote_end
        award = n.award
        artiste = n.artiste
        song = n.song
        map_record = Mapping.where("artiste_eng = ? AND song_eng = ?", artiste, song).first
        search_artiste = if map_record.youtube_artiste.empty? && map_record.artiste_kor.empty?
                           map_record.artiste_eng
                         elsif map_record.youtube_artiste.empty?
                           map_record.artiste_kor
                         else
                          map_record.youtube_artiste
                         end
        search_song = if map_record.youtube_song.empty? && map_record.song_kor.empty?
                        map_record.song_eng
                      elsif map_record.youtube_song.empty?
                        map_record.song_kor
                      else
                       map_record.youtube_song
                      end               
                    
        if search_song == 'zna'
          view_count = 0
        else 
          #search whether video id of mv is already present
          video_id = YoutubeVideoId.where("artiste = ? AND song = ?", artiste, song).first.video_id unless YoutubeVideoId.where("artiste = ? AND song = ?", artiste, song).empty?
          
          if video_id
            stats_url = "https://www.googleapis.com/youtube/v3/videos?id=#{video_id}&key=#{api_key}&fields=items(id,snippet(channelId,title,categoryId),statistics)&part=snippet,statistics"
            request = Typhoeus::Request.new(stats_url)
            response = JSON.parse(request.run.body)
            view_count = response["items"].first["statistics"]["viewCount"]
          else
            record_artiste = search_artiste.gsub(/\s/, '+').strip
            record_song = search_song.gsub(/\s/, '+').strip
            search_term = "#{record_artiste}+#{record_song}+mv"
            search_url = "https://www.googleapis.com/youtube/v3/search?part=snippet&q=#{search_term}&type=video&key=#{api_key}"
            search_request = Typhoeus::Request.new(search_url)
            search_response = JSON.parse(search_request.run.body)
            if search_response.nil?
              viewcount = 0
            else
              #get view count using video id
              video_id = search_response["items"].first["id"]["videoId"]
              thumbnail = search_response["items"].first["snippet"]["thumbnails"]["medium"]["url"]

              #insert youtube video id and thumbnail img into table so can skip the step of searching
              yv = YoutubeVideoId.new(:artiste => artiste, :song => song, :video_id => video_id, :watch_link => "https://www.youtube.com/watch?v=#{video_id}", :thumbnail_img => "thumbnail")
              yv.save

              stats_url = "https://www.googleapis.com/youtube/v3/videos?id=#{video_id}&key=#{api_key}&fields=items(id,snippet(channelId,title,categoryId),statistics)&part=snippet,statistics"
              request = Typhoeus::Request.new(stats_url)
              response = JSON.parse(request.run.body)
              view_count = response["items"].first["statistics"]["viewCount"]
            end
          end
        end
        log.info("Inserting view count for #{record_artiste}'s #{record_song}")
        csv << [ vote_start, vote_end, award, artiste, song, view_count, Time.now, Time.now ]
      end
    end
  end
end