require "open-uri"
require "csv"
require "json"
require "typhoeus"
require "nokogiri"
require "active_record"
require "postgres-copy"
require "pg"
require "pry"


class NominationsController < ApplicationController
  attr_reader :conn 

  def fake_nominations
    render json: [{id: 1, group_name: "Big Bang"}]
  end  

  def pg_connection
    conn = ActiveRecord::Base.establish_connection(
           :adapter => "postgresql",
           :host => "localhost",
           :database => "ollida_development",
           :username => "ollida",
           :password => "ollidarockshaha"
          )
  end

  def popularity_votes_fetcher
    url = "http://mwave.interest.me/mcountdown/vote/preVote"
    
    doc = Nokogiri::HTML(open(url))
    result = Array.new
    
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
    
    #get voting period
    vote_start_raw = doc.css('strong')[0].to_s[30..37]
    vote_start = DateTime.parse(vote_start_raw).strftime("%Y-%m-%d")
    vote_end_raw = doc.css('strong')[0].to_s[47..54]
    vote_end = DateTime.parse(vote_end_raw).strftime("%Y-%m-%d")
    
    CSV.open('./lib/imports/popularity_votes.csv', 'wb') do |csv|
      headers = ["vote_start", "vote_end", "award", "artistee", "song", "votes", "created_at", "updated_at"]
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
  
    sql = "SELECT
               PV.vote_start,
               PV.vote_end,
               PV.award,
               M.artiste_eng,
               M.song_eng,
               CASE WHEN M.youtube_artiste = ''
                     AND M.artiste_kor != '' THEN M.artiste_kor
                    WHEN M.youtube_artiste = ''
                     AND M.artiste_kor = ''  THEN M.artiste_eng
                                             ELSE M.youtube_artiste END AS search_artiste,
               CASE WHEN M.youtube_song = ''
                     AND M.song_kor != '' THEN M.song_kor
                    WHEN M.youtube_song = ''
                     AND M.song_kor = ''  THEN M.song_eng
                                             ELSE M.youtube_song END AS search_song
           FROM popularity_votes PV
           LEFT JOIN mappings M ON PV.artiste = M.artiste_eng
                               AND PV.song = M.song_eng
           "
    sql_result = pg_connection.connection.execute(sql)

    CSV.open('./lib/imports/youtube_views.csv', 'wb') do |csv|
      headers = ["vote_start", "vote_end", "award", "artiste", "song", "views", "created_at", "updated_at"]
      csv << headers
      sql_result.each do |record|
        if record["search_song"] == 'zna'
          view_count = 0
        else 
          #search for video id of mv
          record_artiste = record["search_artiste"].gsub(/\s/, '+').strip
          record_song = record["search_song"].gsub(/\s/, '+').strip
          search_term = "#{record_artiste}+#{record_song}+mv"
          search_url = "https://www.googleapis.com/youtube/v3/search?part=snippet&q=#{search_term}&type=video&key=#{api_key}"
          search_request = Typhoeus::Request.new(search_url)
          search_response = JSON.parse(search_request.run.body)
          
          if search_response.nil?
            viewcount = 0
          else
            #get view count using video id
            video_id = search_response["items"].first["id"]["videoId"]
            stats_url = "https://www.googleapis.com/youtube/v3/videos?id=#{video_id}&key=#{api_key}&fields=items(id,snippet(channelId,title,categoryId),statistics)&part=snippet,statistics"
            request = Typhoeus::Request.new(stats_url)
            response = JSON.parse(request.run.body)
            view_count = response["items"].first["statistics"]["viewCount"]
          end
        end
        log.info("Inserting view count for #{record_artiste}'s #{record_song}")
        csv << [ record["vote_start"], record["vote_end"], record["award"], record["artiste_eng"], record["song_eng"], view_count, Time.now, Time.now ]
      end
    end
  end

  def digital_sales_fetcher   
    sql = "SELECT
               PV.vote_start,
               PV.vote_end,
               PV.award,
               M.artiste_eng,
               M.song_eng,
               CASE WHEN M.gaon_artiste = ''
                     AND M.artiste_kor != '' THEN M.artiste_kor
                    WHEN M.gaon_artiste = ''
                     AND M.artiste_kor = ''  THEN M.artiste_eng
                                             ELSE M.gaon_artiste END AS search_artiste,
               CASE WHEN M.gaon_song = ''
                     AND M.song_kor != '' THEN M.song_kor
                    WHEN M.gaon_song = ''
                     AND M.song_kor = ''  THEN M.song_eng
                                             ELSE M.gaon_song END AS search_song
           FROM popularity_votes PV
           LEFT JOIN mappings M ON PV.artiste = M.artiste_eng
                               AND PV.song = M.song_eng
           "
    sql_result = pg_connection.connection.execute(sql)  

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
      headers = ["vote_start", "vote_end", "award", "artiste", "song", "download_count", "streaming_count", "total_count", "created_at", "updated_at"]
      csv << headers
      sql_result.each do |record|
        record_artiste = record["search_artiste"]
        record_song = record["search_song"]
        #get download and streaming count using search_artiste and search_song
        download_result = download_count.find { |result| /#{record_artiste}/.match(result[0]) && /#{record_song}/.match(result[1]) }.nil? ? 0 : download_count.find { |result| /#{record_artiste}/.match(result[0]) && /#{record_song}/.match(result[1]) }[2].gsub(/,/, '').to_i
        streaming_result = streaming_count.find { |result| /#{record_artiste}/.match(result[0]) && /#{record_song}/.match(result[1]) }.nil? ? 0 : streaming_count.find { |result| /#{record_artiste}/.match(result[0]) && /#{record_song}/.match(result[1]) }[2].gsub(/,/, '').to_i   
        csv << [ record["vote_start"], record["vote_end"], record["award"], record["artiste_eng"], record["song_eng"], download_result, streaming_result, download_result+streaming_result, Time.now, Time.now ]
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
    latest_result = CSV.read('./lib/imports/popularity_votes.csv').drop(1)
    latest_result.each do |record|
      match_result = PopularityVote.find { |pv| record[0] == pv["vote_start"].strftime("%Y-%m-%d") &&
                                                record[1] == pv["vote_end"].strftime("%Y-%m-%d") &&
                                                record[3] == pv["artiste"] &&
                                                record[4] == pv["song"]
                                         }
      if match_result.nil?
        new_record = PopularityVote.new
        new_record.vote_start = record[0]
        new_record.vote_end = record[1]
        new_record.award = record[2]
        new_record.artiste = record[3]
        new_record.song = record[4]
        new_record.votes = record[5]
        new_record.created_at = record[6]
        new_record.updated_at = record[7]
        new_record.save
      else
        match_result.update(:votes => record[5],
                            :updated_at => record[7]
                            )
      end
    end
  end

  def update_youtube_views
    # youtube_views_fetcher
    latest_result = CSV.read('./lib/imports/youtube_views.csv').drop(1)
    latest_result.each do |record|
      match_result = YoutubeView.find { |pv| record[0] == pv["vote_start"].strftime("%Y-%m-%d") &&
                                             record[1] == pv["vote_end"].strftime("%Y-%m-%d") &&
                                             record[3] == pv["artiste"] &&
                                             record[4] == pv["song"]
                                      }
      if match_result.nil?
        new_record = YoutubeView.new
        new_record.vote_start = record[0]
        new_record.vote_end = record[1]
        new_record.award = record[2]
        new_record.artiste = record[3]
        new_record.song = record[4]
        new_record.views = record[5]
        new_record.created_at = record[6]
        new_record.updated_at = record[7]
        new_record.save
      else
        match_result.update(:views => record[5],
                            :updated_at => record[7]
                            )
      end
    end
  end

  def update_digital_sales
    digital_sales_fetcher
    latest_result = CSV.read('./lib/imports/digital_sales.csv').drop(1)
    latest_result.each do |record|
      match_result = DigitalSale.find { |pv| record[0] == pv["vote_start"].strftime("%Y-%m-%d") &&
                                             record[1] == pv["vote_end"].strftime("%Y-%m-%d") &&
                                             record[3] == pv["artiste"] &&
                                             record[4] == pv["song"]
                                      }
      if match_result.nil?
        new_record = DigitalSale.new
        new_record.vote_start = record[0]
        new_record.vote_end = record[1]
        new_record.award = record[2]
        new_record.artiste = record[3]
        new_record.song = record[4]
        new_record.download_count = record[5]
        new_record.streaming_count = record[6]
        new_record.total_count = record[7]
        new_record.created_at = record[8]
        new_record.updated_at = record[9]
        new_record.save
      else
        match_result.update(:download_count => record[5],
                            :streaming_count => record[6],
                            :updated_at => record[9]
                            )
      end
    end
  end

  def nominations_fetcher
    Nomination.delete_all
    sql = "WITH J AS (SELECT
                          A.name,
                          (A.judging_criteria -> 'digital_sales')::NUMERIC AS ds_per,
                          (A.judging_criteria -> 'youtube_views')::NUMERIC AS yv_per,
                          (A.judging_criteria -> 'popularity_votes')::NUMERIC AS pv_per
                      FROM awards A
                      ),
                U AS (SELECT
                          DS.award,
                          DS.vote_start,
                          SUM(DS.download_count) AS dc_total,
                          SUM(DS.streaming_count) AS sc_total,
                          0 AS yv_total,
                          0 AS pv_total
                      FROM J
                      JOIN digital_sales DS ON J.name = DS.award
                      GROUP BY 1,2
                      UNION ALL

                      SELECT
                          YV.award,
                          YV.vote_start,
                          0 AS dc_total,
                          0 AS sc_total,
                          SUM(YV.views) AS yv_total,
                          0 AS pv_total
                      FROM J
                      JOIN youtube_views YV ON J.name = YV.award
                      GROUP BY 1,2
                      UNION ALL

                      SELECT
                          PV.award,
                          PV.vote_start,
                          0 AS dc_total,
                          0 AS sc_total,
                          0 AS yv_total,
                          SUM(PV.votes) AS pv_total
                      FROM J
                      JOIN popularity_votes PV ON J.name = PV.award
                      GROUP BY 1,2
                     ),
                T AS (SELECT
                          award,
                          vote_start,
                          SUM(dc_total) AS dc_total,
                          SUM(sc_total) AS sc_total,
                          SUM(yv_total) AS yv_total,
                          SUM(pv_total) AS pv_total
                      FROM U
                      GROUP BY 1,2
                      )
           SELECT DISTINCT
               PV.award,
               PV.vote_start,
               PV.vote_end,
               PV.artiste,
               PV.song,
               DS.download_count,
               DS.streaming_count,
               YV.views AS youtube_views,
               PV.votes AS popularity_votes,
               ROUND((((DS.download_count / T.dc_total) + (DS.streaming_count / T.sc_total)) * J.ds_per * 100.0)::NUMERIC, 2) AS normalized_ds,
               ROUND(((YV.views / T.yv_total) * J.yv_per * 100.0)::NUMERIC, 2) AS normalized_yv,
               ROUND(((PV.votes / T.pv_total) * J.pv_per * 100.0)::NUMERIC, 2) AS normalized_pv,
               ROUND(((((DS.download_count / T.dc_total) + (DS.streaming_count / T.sc_total)) * J.ds_per +
               (YV.views / T.yv_total) * J.yv_per +
               (PV.votes / T.pv_total) * J.pv_per) * 100.0)::NUMERIC, 2) AS aggregate_score
          FROM popularity_votes PV
          JOIN J ON PV.award = J.name
          JOIN T ON PV.award = T.award
          JOIN digital_sales DS ON PV.award = DS.award
                               AND PV.vote_start = DS.vote_start
                               AND PV.artiste = DS.artiste
                               AND PV.song = DS.song
          JOIN youtube_views YV ON PV.award = YV.award
                               AND PV.vote_start = YV.vote_start
                               AND PV.artiste = YV.artiste
                               AND PV.song = YV.song
          " 
    
    sql_result = pg_connection.connection.execute(sql)
    headers = sql_result.fields()
    headers.push('created_at', 'updated_at')
    CSV.open('./lib/imports/nominations.csv', 'wb') do |csv|
      csv << headers
      sql_result.each do |record|
        csv << [ record[headers[0]], record[headers[1]], record[headers[2]], record[headers[3]], record[headers[4]], record[headers[5]], record[headers[6]], record[headers[7]], record[headers[8]], record[headers[9]], record[headers[10]], record[headers[11]], record[headers[12]], Time.now, Time.now ]
      end
    end

    Nomination.copy_from './lib/imports/nominations.csv'
    render json: Nomination.all
               
  end

  def index
    nominations_fetcher
    @nomination_artiste = DigitalSale.all
  end

end
