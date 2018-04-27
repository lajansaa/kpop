require "open-uri"
require "csv"
require "json"
require "typhoeus"
require "nokogiri"
require "active_record"
require "postgres-copy"
require "pg"


class NominationsController < ApplicationController

  def popularity_votes_fetcher
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
        #standardise artiste and song names across metrics tables
        match_result = Mapping.find { |map| record[0] == map.mnet_artiste && record[1] == map.mnet_song }
        csv << [vote_start, vote_end, "MCOUNTDOWN", match_result["artiste_eng"], match_result["song_eng"], record[2], Time.now, Time.now]
      end
    end
  end

  def youtube_views_fetcher
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

  def digital_sales_fetcher   
    max_vote_start = PopularityVote.maximum("vote_start")
    nominees_array = PopularityVote.all.where("vote_start = '#{max_vote_start}'")
    
    result_array = Array.new
    nominees_array.each do |n|
      map_record = Mapping.where("artiste_eng = ? AND song_eng = ?", n.artiste, n.song).first
      search_artiste = if map_record.gaon_artiste.empty? && map_record.artiste_kor.empty?
                         map_record.artiste_eng
                       elsif map_record.gaon_artiste.empty?
                         map_record.artiste_kor
                       else
                        map_record.gaon_artiste
                       end
      search_song = if map_record.gaon_song.empty? && map_record.song_kor.empty?
                      map_record.song_eng
                    elsif map_record.gaon_song.empty?
                      map_record.song_kor
                    else
                     map_record.gaon_song
                    end
      result_array.push([ n.vote_start, n.vote_end, n.award, n.artiste, n.song, search_artiste, search_song])
    end

    #get download result
    download_url = "http://www.gaonchart.co.kr/main/section/chart/online.gaon?nationGbn=T&serviceGbn=S1020"
    page = Nokogiri::HTML(open(download_url))
    download_count = Array.new
    song = ""
    artiste = ""
    downloads = 0
    counts = page.css(".count")
    data_downloads= page.css(".subject")

    for i in 0..data_downloads.length()-1
      data_download = Nokogiri::HTML(data_downloads[i].to_s)
      title_artiste = data_download.xpath('//td/p')
        song = title_artiste[0].content.strip.gsub( /\s+/, " " )
        artiste = title_artiste[1].content.split("|")[0].strip.gsub( /\s+/, " " )
        downloads = counts[i].content.strip.gsub( /\s+/, " " )
      download_count.push([ artiste, song, downloads ])
    end

    #get streaming result
    streaming_url = "http://www.gaonchart.co.kr/main/section/chart/online.gaon?nationGbn=T&serviceGbn=S1040"
    doc = Nokogiri::HTML(open(streaming_url))
    streaming_count = Array.new
    song = ""
    artiste = ""
    streams = 0
    stream_count = doc.css(".count")
    stream_downloads = doc.css(".subject")

    for i in 0..stream_downloads.length()-1
      stream_download = Nokogiri::HTML(stream_downloads[i].to_s)
      title_artiste = stream_download.xpath('//td/p')
      song = title_artiste[0].content.strip.gsub( /\s+/, " " )
      artiste = title_artiste[1].content.split('|')[0].strip.gsub( /\s+/, " " )
      streams = stream_count[i].content.strip.gsub( /\s+/, " " )
      streaming_count.push([ artiste, song, streams ])
    end

    #merging them into csv file
    CSV.open('./lib/imports/digital_sales.csv', 'wb') do |csv|
      headers = ["vote_start", "vote_end", "award", "artiste", "song", "download_count", "streaming_count", "created_at", "updated_at"]
      csv << headers
      result_array.each do |record|
        record_artiste = record[5]
        record_song = record[6]
        #get download and streaming count using search_artiste and search_song
        download_result = download_count.find { |result| Regexp.new(Regexp.escape(record_artiste)).match(result[0]) && Regexp.new(Regexp.escape(record_song)).match(result[1]) }.nil? ? 0 : download_count.find { |result| Regexp.new(Regexp.escape(record_artiste)).match(result[0]) && Regexp.new(Regexp.escape(record_song)).match(result[1]) }[2].gsub(/,/, '').to_i
        streaming_result = streaming_count.find { |result| Regexp.new(Regexp.escape(record_artiste)).match(result[0]) && Regexp.new(Regexp.escape(record_song)).match(result[1]) }.nil? ? 0 : streaming_count.find { |result| Regexp.new(Regexp.escape(record_artiste)).match(result[0]) && Regexp.new(Regexp.escape(record_song)).match(result[1]) }[2].gsub(/,/, '').to_i   
        csv << [ record[0], record[1], record[2], record[3], record[4], download_result, streaming_result, Time.now, Time.now ]
      end
    end
  end

  def update_mappings
    # Since mappings are updated manually,
    # it makes sense to overwrite the whole table
    # on each update
    Mapping.delete_all
    Mapping.copy_from './lib/imports/mappings.csv'
  end

  def update_popularity_votes
    popularity_votes_fetcher
    update_metrics('./lib/imports/popularity_votes.csv', PopularityVote) { |instance, csv_row|
      instance.update(
        votes: csv_row["votes"],
        updated_at: csv_row["updated_at"]
      )
    }
  end

  def update_youtube_views
    youtube_views_fetcher
    update_metrics('./lib/imports/youtube_views.csv', YoutubeView) { |instance, csv_row|
      instance.update(
        views: csv_row["views"],
        updated_at: csv_row["updated_at"]
      )
    }
  end

  def update_digital_sales
    digital_sales_fetcher
    update_metrics('./lib/imports/digital_sales.csv', DigitalSale) { |instance, csv_row|
      instance.update(
        download_count: csv_row["download_count"],
        streaming_count: csv_row["streaming_count"],
        updated_at: csv_row["updated_at"]
      )
    }
  end

  def update_nominations
    log = Logger.new(STDOUT)

    # log.info("Importing latest mappings...")
    # update_mappings

    # log.info("Updating popularity votes...")
    # update_popularity_votes

    # log.info("Updating youtube views...")
    # update_youtube_views

    # log.info("Updating digital sales...")
    # update_digital_sales

    log.info("Calculating aggregate score for each nomination...")
    
    #get judging criteria percentages
    ds_percent = Award.find_by("name = 'MCOUNTDOWN'").judging_criteria["digital_sales"].to_f
    av_percent = Award.find_by("name = 'MCOUNTDOWN'").judging_criteria["album_volume"].to_f
    yv_percent = Award.find_by("name = 'MCOUNTDOWN'").judging_criteria["youtube_views"].to_f
    pv_percent = Award.find_by("name = 'MCOUNTDOWN'").judging_criteria["popularity_votes"].to_f
    
    #get the max vote start date of voting cycle
    max_vote_start = PopularityVote.maximum("vote_start")
    
    #sum individual metrics to get denominator
    dc_total = DigitalSale.where("vote_start='#{max_vote_start}'").sum("download_count")
    sc_total = DigitalSale.where("vote_start='#{max_vote_start}'").sum("streaming_count")
    av_total = AlbumVolume.where("vote_start='#{max_vote_start}'").sum("volume")
    yv_total = YoutubeView.where("vote_start='#{max_vote_start}'").sum("views")
    pv_total = PopularityVote.where("vote_start='#{max_vote_start}'").sum("votes")
    
    final_result = Array.new
    #for each nominee, calculate score
    nominees_array = PopularityVote.all.where("vote_start = '#{max_vote_start}'")
    nominees_array.each do |n|
      vote_start = n.vote_start
      artiste = n.artiste
      song = n.song
      download_count = DigitalSale.find_by("vote_start = ? AND artiste = ? AND song = ?", vote_start, artiste, song).download_count
      streaming_count = DigitalSale.find_by("vote_start = ? AND artiste = ? AND song = ?", vote_start, artiste, song).streaming_count
      volume = AlbumVolume.find_by("vote_start = ? AND artiste = ? AND song = ?", vote_start, artiste, song).volume
      views = YoutubeView.find_by("vote_start = ? AND artiste = ? AND song = ?", vote_start, artiste, song).views
      normalized_pv = (n.votes / pv_total * pv_percent * 100.0).round(2)
      normalized_av = (volume / av_total * av_percent * 300.0).round(2)
      normalized_yv = (views / yv_total * yv_percent * 400.0).round(2)
      normalized_ds = (((download_count / dc_total) +
                      (streaming_count / sc_total)) * ds_percent * 70.0).round(2)
      aggregate_score = (normalized_pv + normalized_av + normalized_yv + normalized_ds).round(2)
      normalized_remainder = 50.0 - aggregate_score
      final_result.push([ 1, n.award, vote_start, n.vote_end, artiste, song, download_count, streaming_count, volume, views, n.votes, normalized_ds, normalized_av, normalized_yv, normalized_pv, normalized_remainder, aggregate_score, Time.now, Time.now ])
    end
    sorting = final_result.sort_by{|record| record[16]}.reverse
    CSV.open('./lib/imports/nominations.csv', 'wb') do |csv|
      headers = [ "award_id", "award", "vote_start", "vote_end", "artiste", "song", "download_count", "streaming_count", "album_volume", "youtube_views", "popularity_votes", "normalized_ds", "normalized_av", "normalized_yv", "normalized_pv", "normalized_remainder", "aggregate_score", "created_at", "updated_at", "ranking" ]
      csv << headers
      sorting.each do |record|
        ranking = sorting.find_index(record) + 1
        csv << record.append(ranking)
      end
    end

    update_metrics('./lib/imports/nominations.csv', Nomination) { |instance, csv_row|
      instance.update(
        download_count: csv_row["download_count"],
        streaming_count: csv_row["streaming_count"],
        album_volume: csv_row["album_volume"],
        youtube_views: csv_row["youtube_views"],
        popularity_votes: csv_row["popularity_votes"],
        normalized_ds: csv_row["normalized_ds"],
        normalized_av: csv_row["normalized_av"],
        normalized_yv: csv_row["normalized_yv"],
        normalized_pv: csv_row["normalized_pv"],
        normalized_remainder: csv_row["normalized_remainder"],
        aggregate_score: csv_row["aggregate_score"],
        ranking: csv_row["ranking"],
        updated_at: csv_row["updated_at"]
      )
    }
    
    render text: 'Update Complete', content_type: 'text/plain'
  end

  def get_nominations
    render json: Nomination.all
  end

  private

  def update_metrics(file_name, class_type)
    CSV.foreach(file_name, headers: true) do |row|
      instance = class_type.find_by(vote_start: row["vote_start"], 
                                    vote_end: row["vote_end"], 
                                    artiste: row["artiste"], 
                                    song: row["song"])
      if instance
        yield instance, row
      else
        class_type.create(row.to_h)
      end
    end
  end

end
