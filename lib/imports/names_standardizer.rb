require "open-uri"
require "typhoeus"
require "nokogiri"
require "active_record"
require "pg"
require "pry"
require "watir-webdriver"

class NamesStandardizer

  def self.artiste_eng_name
    log = Logger.new(STDOUT)
    null_names = ArtisteV2.where(:name_eng => nil)
    null_names.each do |n|
      suggested_name = n.mcountdown.gsub(/([a-z])([A-Z])/, '\1 \2').gsub(/`/, '\'')
      n.update(:name_eng => suggested_name)
      log.info("Updated #{n.mcountdown} to #{suggested_name}")
    end
  end

  def self.artiste_kor_name_mnet
    log = Logger.new(STDOUT)
    null_names = ArtisteV2.where(:name_kor => nil)
    browser = Watir::Browser.new(:phantomjs)
    null_names.each do |n|
      mnet_name = n.name_eng.gsub(/\s/, '+').downcase
      url = "http://search.mnet.com/search/index.asp?q=#{mnet_name}"
      browser.goto url
      sleep 5
      doc = Nokogiri::HTML(browser.html)
      suggested_name = doc.css('.artist_con_left dd.title.title').text.strip.match(/\p{Hangul}+/)
      n.update(:name_kor => suggested_name)
      log.info("Updated #{n.mcountdown}'s korean name to #{suggested_name}")
    end
  end

  def self.artiste_kor_name_kpop_scene
    log = Logger.new(STDOUT)
    null_names = ArtisteV2.where(:name_kor => nil)
    null_names.each do |n|
      kpopscene_name = n.name_eng.gsub(/\W/, '-').downcase
      url = "http://www.kpopscene.com/#{kpopscene_name}/"
      
      if Typhoeus.get(url).response_code == 404
        log.info("Page not found, skipping #{n.mcountdown}")
      else
        doc = Nokogiri::HTML(open(url))
        suggested_name = doc.css('.postitle').children.text.match(/\p{Hangul}+/)
        n.update(:name_kor => suggested_name)
        log.info("Updated #{n.mcountdown}'s korean name to #{suggested_name}")
      end
    end

end