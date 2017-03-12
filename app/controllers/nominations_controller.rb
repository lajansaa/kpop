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

  def get_nominations
    render json: Nomination.all
  end
  

end
