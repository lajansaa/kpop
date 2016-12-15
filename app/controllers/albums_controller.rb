class AlbumsController < ApplicationController

  def album_img
    url = "http://mwave.interest.me/mcountdown/vote/preVote"
    log = Logger.new(STDOUT)
    doc = Nokogiri::HTML(open(url))
    
    nominees = doc.css('.voteWeekListResult ol li dl')
    nominees.each_with_index do |record, index|
      album_id = record.css('dt a').first.attributes["onclick"].value.split("\'")[1]

        if (0..2).include?(index)
          artiste_id = record.css('dd.title a')[1].attributes["onclick"].value.split("\'")[1]
          artiste = record.css('dd.title a')[1].children.text.strip
          song = record.css('dd.title strong').first.children.text
        else
          artiste_id = record.css('dd.artist a').first.attributes["onclick"].value.split("\'")[1]
          artiste = record.css('dd.artist a').first.children.text.strip
          song = record.css('dd.title').first.children.text.strip
        end

      match_result = Mapping.find { |map| artiste == map.mnet_artiste && song == map.mnet_song }

      log.info("Getting album for #{artiste}")
      album_url = "http://mwave.interest.me/en/album/album.m?searchAlbumVO.album_id=#{album_id}"
      album_doc = Nokogiri::HTML(open(album_url))
      album_img = album_doc.css('.AlbumThumbWrapInner img').first.attributes["src"].value 
      album = album_doc.css('.AlbumThumbWrapInner img').first.attributes["alt"].value

      if Album.find_by("artiste = '#{match_result["artiste_eng"].gsub(/\'/, '\'\'')}' AND name = '#{album.gsub(/\'/, '\'\'')}'").nil?
        log.info("Inserting into table albums for #{artiste}")
        Album.create(:name => album, :artiste => match_result["artiste_eng"], :album_img => album_img, :created_at => Time.now, :updated_at => Time.now)
      end

      ['2016-11-11', '2016-12-09'].each do |d|
        pv_record = PopularityVote.find_by("artiste = '#{match_result["artiste_eng"].gsub(/\'/, '\'\'')}' AND song = '#{match_result["song_eng"].gsub(/\'/, '\'\'')}' AND vote_start = '#{d}'")
        if pv_record
          if pv_record.album.nil?
            pv_record.update_attributes(:album => album)
          end
        end
  
        n_record = Nomination.find_by("artiste = '#{match_result["artiste_eng"].gsub(/\'/, '\'\'')}' AND song = '#{match_result["song_eng"].gsub(/\'/, '\'\'')}' AND vote_start = '#{d}'")
        if n_record
          if n_record.album.nil?
            n_record.update_attributes(:album => album)
          end
        end
      end


      if Artiste.find_by("name_eng = '#{match_result["artiste_eng"].gsub(/\'/, '\'\'')}'").nil?
        log.info("Getting and inserting into table artistes for #{artiste}")
        artiste_f = artiste.downcase.gsub(/\W/, '-')
        artiste_url = "http://mwave.interest.me/en/kstar/#{artiste_id}/#{artiste_f}"
        artiste_doc = Nokogiri::HTML(open(artiste_url))
        artiste_img = artiste_doc.css('.thumb img').first.attributes["src"].value
        Artiste.create(:name_eng => match_result["artiste_eng"], :profile_img => artiste_img, :created_at => Time.now, :updated_at => Time.now)
      end
    end
   render text: 'Update Complete'
  end

end

