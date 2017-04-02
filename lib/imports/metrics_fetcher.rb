require "open-uri"
require "typhoeus"
require "nokogiri"
require "active_record"
require "pg"
require "pry"

class MetricsFetcher
  def self.youtube_views
    log = Logger.new(STDOUT)
    api_key = ENV['GOOGLE_API_KEY']
    time_now = Time.now.in_time_zone("Seoul")
    formatted_time_now = time_now.strftime("%Y-%m-%d")

    log.info("Getting nominees for ongoing nominations")
    ongoing_cycle_id = NominationCycle.where('start_date <= ? AND end_date >= ?', time_now, time_now)
                                      .select("id")
    nominees_array = Nominee.where(cycle_id: ongoing_cycle_id)

    nominees_array.each do |n|
      artiste_obj = Artiste.find_by(:id => n["artiste_id"])
      song_obj = Song.find_by(:id => n["song_id"], :artiste_id => n["artiste_id"])
      yt_artiste_name = artiste_obj.name_kor ||= artiste_obj.name_eng
      yt_song_name = song_obj.name_kor ||= song_obj.name_eng
                     
      yt = YoutubeVideo.find_by(:artiste_id => n["artiste_id"], :song_id => n["song_id"])

      if yt.video_id == 'NA'
        video_id = 'NA'
        yt_id = yt.id
        view_count = 0
      elsif yt.nil?
        log.info("Getting Youtube Video ID for #{yt_artiste_name}'s #{yt_song_name}")
        record_artiste = yt_artiste_name.gsub(/\s/, '+').strip
        record_song = yt_song_name.gsub(/\s/, '+').strip
        search_term = "#{record_artiste}+#{record_song}+mv"
        search_url = "https://www.googleapis.com/youtube/v3/search?part=snippet&q=#{search_term}&type=video&key=#{api_key}"
        search_request = Typhoeus::Request.new(search_url)
        sleep 3
        search_response = JSON.parse(search_request.run.body)["items"].first

        if search_response.nil?
          video_id = 'NA'
          video_title = nil
          thumbnail = nil
          watch_link = nil
          view_count = 0
        else
          #get view count using video id
          video_id = search_response["id"]["videoId"]
          video_title = search_response["snippet"]["title"]
          thumbnail = search_response["snippet"]["thumbnails"]["medium"]["url"]
          watch_link = "https://www.youtube.com/watch?v=#{video_id}"

          stats_url = "https://www.googleapis.com/youtube/v3/videos?id=#{video_id}&key=#{api_key}&fields=items(id,snippet(channelId,title,categoryId),statistics)&part=snippet,statistics"
          request = Typhoeus::Request.new(stats_url)
          sleep 3
          response = JSON.parse(request.run.body)
          view_count = response["items"].first["statistics"]["viewCount"]
        end

        #insert youtube video id and thumbnail img into table so can skip the step of searching
        yt_id = YoutubeVideo.create(:artiste_id => n["artiste_id"],
                                    :song_id => n["song_id"],
                                    :video_id => video_id,
                                    :watch_link => watch_link,
                                    :thumbnail_img => thumbnail,
                                    :video_title => video_title
                                    ).id
      end
      
      log.info("Inserting #{view_count} views for #{yt_song_name}")
      YoutubeViewV2.where(:date_d => formatted_time_now,
                          :youtube_id => yt_id
                          )
                   .first_or_create(:date_d => formatted_time_now,
                                    :youtube_id => yt_id,
                                    :views => view_count
                                    )
                   .update(:views => view_count)
    end
  end

end
                 

