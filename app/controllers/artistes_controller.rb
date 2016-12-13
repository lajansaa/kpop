class ArtistesController < ApplicationController

  def profile_img_fetcher
    
    result = Array.new

    1.upto(10) do |i|
    url = "http://mwave.interest.me/en/meetgreet/artist_index?alphabetKey=ALL&page=#{i}"
    
    doc = Nokogiri::HTML(open(url))
    record_array = doc.css('.listArtistIndex li')
      record_array.each do |record|
        profile_img = record.css("img").first.attributes["src"].value
        name_eng = record.css("img").first.attributes["alt"].value
        result.push([ name_eng, profile_img ])
      end
    end

    CSV.open('./lib/imports/artistes.csv', 'wb') do |csv|
      headers = ["name_eng", "profile_img", "created_at", "updated_at"]
      csv << headers
      result.each do |record|
        csv << [ record[0], record[1], Time.now, Time.now]
      end
    end
    
    CSV.foreach('./lib/imports/artistes.csv', headers: true) do |row|
      Artiste.create(row.to_h)
    end
    
    render text: 'Update Complete'
  end

end
