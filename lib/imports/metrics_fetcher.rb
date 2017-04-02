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
      else
        log.info("Youtube Video ID exists for #{yt_artiste_name}'s #{yt_song_name}")
        video_id = yt.video_id
        yt_id = yt.id
        stats_url = "https://www.googleapis.com/youtube/v3/videos?id=#{video_id}&key=#{api_key}&fields=items(id,snippet(channelId,title,categoryId),statistics)&part=snippet,statistics"
        request = Typhoeus::Request.new(stats_url)
        sleep 3
        response = JSON.parse(request.run.body)
        view_count = response["items"].first["statistics"]["viewCount"]
      end
      
      log.info("Inserting #{view_count} views for #{yt_song_name}")
      YoutubeView.where(:date_d => formatted_time_now,
                        :artiste_id => n["artiste_id"],
                        :song_id => n["song_id"],
                        )
                   .first_or_create(:date_d => formatted_time_now,
                                    :artiste_id => n["artiste_id"],
                                    :song_id => n["song_id"],
                                    :youtube_id => yt_id,
                                    :youtube_views => view_count
                                    )
                   .update(:youtube_views => view_count)
    end
  end

  def self.digital_sales
    log = Logger.new(STDOUT)
    api_key = ENV['GOOGLE_API_KEY']
    time_now = Time.now.in_time_zone("Seoul")
    formatted_time_now = time_now.strftime("%Y-%m-%d")

    log.info("Getting nominees for ongoing nominations")
    ongoing_cycle_id = NominationCycle.where('start_date <= ? AND end_date >= ?', time_now, time_now)
                                      .select("id")
    nominees_array = Nominee.where(cycle_id: ongoing_cycle_id)

    download_url = "http://www.gaonchart.co.kr/main/section/chart/online.gaon?nationGbn=T&serviceGbn=S1020"
    log.info("Getting top 100 downloads")
    download_list = get_result_list_gaon(download_url)
    log.info("Getting top 100 streams")
    streaming_url = "http://www.gaonchart.co.kr/main/section/chart/online.gaon?nationGbn=T&serviceGbn=S1040"
    stream_list = get_result_list_gaon(streaming_url)

    nominees_array.each do |n|
      artiste_obj = Artiste.find_by(:id => n["artiste_id"])
      song_obj = Song.find_by(:id => n["song_id"], :artiste_id => n["artiste_id"])
      std_artiste_name = artiste_obj.name_kor ||= artiste_obj.name_eng
      std_song_name = song_obj.name_kor ||= song_obj.name_eng
      download_cnt = download_list.find { |result| Regexp.new(Regexp.escape(std_artiste_name)).match(result["artiste"]) && Regexp.new(Regexp.escape(std_song_name)).match(result["song"]) }.nil? ? 0 : download_list.find { |result| Regexp.new(Regexp.escape(std_artiste_name)).match(result["artiste"]) && Regexp.new(Regexp.escape(std_song_name)).match(result["song"]) }["count"].gsub(/,/, '').to_i
      stream_cnt = stream_list.find { |result| Regexp.new(Regexp.escape(std_artiste_name)).match(result["artiste"]) && Regexp.new(Regexp.escape(std_song_name)).match(result["song"]) }.nil? ? 0 : stream_list.find { |result| Regexp.new(Regexp.escape(std_artiste_name)).match(result["artiste"]) && Regexp.new(Regexp.escape(std_song_name)).match(result["song"]) }["count"].gsub(/,/, '').to_i
      log.info("Inserting #{download_cnt} downloads and #{stream_cnt} streams for #{std_song_name}")
      DigitalSale.where(:date_d => formatted_time_now,
                        :artiste_id => n["artiste_id"],
                        :song_id => n["song_id"],
                        )
                 .first_or_create(:date_d => formatted_time_now,
                                  :artiste_id => n["artiste_id"],
                                  :song_id => n["song_id"],
                                  :download_cnt => download_cnt,
                                  :stream_cnt => stream_cnt
                                  )
                 .update(:download_cnt => download_cnt,
                         :stream_cnt => stream_cnt
                         )
    end
  end

  def self.get_result_list_gaon(url)
    doc = Nokogiri::HTML(open(url))
    result_list = Array.new
    chart_list = doc.css(".chart tr")

    chart_list.drop(1).each do |c|
        song = c.css(".subject p")[0].attributes["title"].content.gsub(/`/, '\'')
        artiste = c.css(".subject p")[1].attributes["title"].content.split("|")[0].strip.gsub(/`/, '\'')
        count = c.css(".count").children.text.strip
        result_list.push({"artiste" => artiste, "song" => song, "count" => count})
    end
   return result_list
  end

end
                 

