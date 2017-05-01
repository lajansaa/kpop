require "open-uri"
require "typhoeus"
require "nokogiri"
require "active_record"
require "pg"
require "pry"
require "watir-webdriver"

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
      if yt.nil?
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
          if response["items"].first["statistics"].nil?
            view_count = 0
          else
            view_count = response["items"].first["statistics"]["viewCount"]
          end
        end

        #insert youtube video id and thumbnail img into table so can skip the step of searching
        yt_id = YoutubeVideo.create(:artiste_id => n["artiste_id"],
                                    :song_id => n["song_id"],
                                    :video_id => video_id,
                                    :watch_link => watch_link,
                                    :thumbnail_img => thumbnail,
                                    :video_title => video_title
                                    ).id
      elsif yt.video_id == 'NA'
        yt.video_id == 'NA'
        video_id = 'NA'
        yt_id = yt.id
        view_count = 0
      else
        log.info("Youtube Video ID exists for #{yt_artiste_name}'s #{yt_song_name}")
        video_id = yt.video_id
        yt_id = yt.id
        stats_url = "https://www.googleapis.com/youtube/v3/videos?id=#{video_id}&key=#{api_key}&fields=items(id,snippet(channelId,title,categoryId),statistics)&part=snippet,statistics"
        request = Typhoeus::Request.new(stats_url)
        sleep 3
        response = JSON.parse(request.run.body)
        if response["items"].first["statistics"].nil?
          view_count = 0
        else
          view_count = response["items"].first["statistics"]["viewCount"]
        end
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

    gaon_index = Array.new

    nominees_array.each do |n|
      artiste_obj = Artiste.find_by(:id => n["artiste_id"])
      song_obj = Song.find_by(:id => n["song_id"], :artiste_id => n["artiste_id"])
      
      download_cnt = get_ds_cnt(artiste_obj, song_obj, download_list, 'find')
      stream_cnt = get_ds_cnt(artiste_obj, song_obj, stream_list, 'find')

      log.info("Inserting #{download_cnt} downloads and #{stream_cnt} streams for #{artiste_obj.name_eng}'s #{song_obj.name_eng}")
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

      download_match = get_ds_cnt(artiste_obj, song_obj, download_list, 'find_index')
      if download_match
        gaon_index.push({"song_id" => n["song_id"], "song_index" => download_match + 2})
      end
    end
    
    log.info("Getting providers links")
    get_links(download_url, gaon_index)

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

  def self.get_ds_cnt(artiste_obj, song_obj, list, find_method)
    if find_method == 'find_index'
      result = list.find_index { |result| 
                 (Regexp.new(Regexp.escape(artiste_obj.name_kor ||= 'NA')).match(result["artiste"]) ||
                  Regexp.new(Regexp.escape(artiste_obj.name_eng)).match(result["artiste"])
                 ) &&
                 (Regexp.new(Regexp.escape(song_obj.name_kor ||= 'NA')).match(result["song"]) ||
                  Regexp.new(Regexp.escape(song_obj.name_eng)).match(result["song"])
                 )
               }
      return result
    else
      result = list.find { |result| 
                 (Regexp.new(Regexp.escape(artiste_obj.name_kor ||= 'NA')).match(result["artiste"]) ||
                  Regexp.new(Regexp.escape(artiste_obj.name_eng)).match(result["artiste"])
                 ) &&
                 (Regexp.new(Regexp.escape(song_obj.name_kor ||= 'NA')).match(result["song"]) ||
                  Regexp.new(Regexp.escape(song_obj.name_eng)).match(result["song"])
                 )
               }
    return result.nil? ? 0 : result["count"].gsub(/,/, '').to_i
    end
  end

  def self.get_links(url, gaon_index)
    log = Logger.new(STDOUT)
    # url = "http://www.gaonchart.co.kr/main/section/chart/online.gaon?nationGbn=T&serviceGbn=S1020"
    # log.info("Getting top 100 downloads")
    # download_list = get_result_list_gaon(url)
    # gaon_index = Array.new
    # Song.where("id = 153").each do |s|
    #   download_match = get_ds_cnt(s.artiste, s, download_list, 'find_index')
    #   if download_match
    #     gaon_index.push({"song_id" => s.id, "song_index" => download_match + 2})
    #   end
    # end
      
    browser = Watir::Browser.new :phantomjs
    browser.window.maximize
    browser.goto url

    gaon_index.each do |i|
      play_button = browser.driver.find_element(xpath: "//*[@id='wrap']/div[4]/table/tbody/tr[#{i["song_index"]}]/td[8]/div/span")
      browser.driver.execute_script("$('.chart tr')[#{i["song_index"]}-1].scrollIntoView()")
      sleep 5
      log.info("Inserting Bugs link")
      browser.driver.action.move_to(play_button).move_by(-360, -30).click.perform
      sleep 5
      Song.find(i["song_id"]).update(bugs: browser.windows.last.url)
      browser.windows.last.close

      log.info("Inserting Genie link")
      browser.driver.action.move_to(play_button).move_by(-330, 20).click.perform
      sleep 5
      Song.find(i["song_id"]).update(genie: browser.windows.last.url)
      browser.windows.last.close

      log.info("Inserting Melon link")
      browser.driver.action.move_to(play_button).move_by(-400, -30).click.perform
      sleep 5
      Song.find(i["song_id"]).update(melon: browser.windows.last.url)
      browser.windows.last.close
      sleep 5
    end
    browser.close
  end

end
                 

