require 'csv'

class ArtistesController < ApplicationController

  def profile_img_mnet
    artiste_array = Array.new

    1.upto(10) do |i|
    url = "http://mwave.interest.me/en/meetgreet/artist_index?alphabetKey=ALL&page=#{i}"
    doc = Nokogiri::HTML(open(url))
    record_array = doc.css('.listArtistIndex li')
      record_array.each do |record|
        profile_img = record.css("img").first.attributes["src"].value
        name_eng = record.css("img").first.attributes["alt"].value
        artiste_array.push([ name_eng, profile_img ])
      end
    end

    CSV.open('./lib/imports/artistes.csv', 'wb') do |csv|
      headers = ["name_eng", "profile_img", "created_at", "updated_at"]
      csv << headers
      no_profile_artistes.each do |a|
        match_artiste = artiste_array.find { |result| /#{a}/ix.match(result[0].gsub(/\s/,'')) }
        if match_artiste
          csv << [ a, match_artiste[1], Time.now, Time.now]
        end
      end
    end
    
    CSV.foreach('./lib/imports/artistes.csv', headers: true) do |row|
      Artiste.create(row.to_h)
    end
    
    render text: 'Update Complete'
  end

  def profile_img_kpop_scene
    log = Logger.new(STDOUT)
    artiste_array = Array.new
    

    1.upto(7) do |i|
      log.info("Getting all artistes from index page #{i}...")
      main_url = "http://www.kpopscene.com/artist-index/?pgno=#{i}#azindex-1"
      doc = Nokogiri::HTML(open(main_url))
      index_array = doc.css('.azindex')
      index_array.each do |index|
        index.css('li a').each do |index_item|
          artiste_link = index_item.attributes["href"].value
          if artiste_link != '#azindex-1'
            artiste = index_item.content.split(/\(|\|/).first.strip
            log.info("Inserting #{artiste}'s link into array...")
            artiste_array.push([ artiste, artiste_link ])
          end
        end
      end
    end

    CSV.open('./lib/imports/artistes_v2.csv', 'wb') do |csv|
      headers = ["name_eng", "profile_img", "created_at", "updated_at"]
      csv << headers
      no_profile_artistes.each do |a|
        match_artiste = artiste_array.find { |result| /#{a}/ix.match(result[0].gsub(/\s/,'')) }
        if match_artiste
          log.info("Finding and inserting #{match_artiste[0]}'s profile image based on link...")
          doc = Nokogiri::HTML(open(match_artiste[1]))
        # profile_img = doc.css('.entry-content img').first.attributes["src"].value
        # binding.pry
        # if profile_img.match("a3-lazy-load")
          profile_img = doc.css('.images-1 img').first.attributes["src"].value
        # end
          csv << [ a, profile_img, Time.now, Time.now]
        end
      end
    end

    CSV.foreach('./lib/imports/artistes_v2.csv', headers: true) do |row|
      Artiste.create(row.to_h)
    end
    
    render text: 'Update Complete'
  end

  private

  def no_profile_artistes
    all_artiste = Nomination.joins("LEFT JOIN artistes ON nominations.artiste = artistes.name_eng")
                            .where("artistes.name_eng IS NULL")
                            .pluck("DISTINCT nominations.artiste")
  end

end
