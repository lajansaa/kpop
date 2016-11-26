require "nokogiri"
require "open-uri"
require "csv"
#=======Digital Music=======

url = "http://www.gaonchart.co.kr/main/section/chart/online.gaon?nationGbn=T&serviceGbn=S1020"

page = Nokogiri::HTML(open(url))
result1 = Array.new

song = ""
artist = ""
rating = 0
counts = page.css(".count")
data_downloads= page.css(".subject")

for i in 0..data_downloads.length()-1
	data_download = Nokogiri::HTML(data_downloads[i].to_s)
	title_artist = data_download.xpath('//td/p')
		song = title_artist[0].content.strip.gsub( /\s+/, " " )
		artist = title_artist[1].content.split("|")[0].strip.gsub( /\s+/, " " )
		rating = counts[i].content.strip.gsub( /\s+/, " " )
	result1.push(Array.new([artist, song, rating]))
end

CSV.open('output/digital_sales.csv', 'wb') do |csv|
	for i in 0..result1.length()-1
		csv << result1[i]
	end
end
# =======Streaming=======

url = "http://www.gaonchart.co.kr/main/section/chart/online.gaon?nationGbn=T&serviceGbn=S1040"

doc = Nokogiri::HTML(open(url))
result2 = Array.new
song = ""
artist = ""
rating = 0
stream_count = doc.css(".count")
stream_downloads = doc.css(".subject")

	for i in 0..stream_downloads.length()-1
		stream_download = Nokogiri::HTML(stream_downloads[i].to_s)
		title_artist = stream_download.xpath('//td/p')
		song = title_artist[0].content.strip.gsub( /\s+/, " " )
		artist = title_artist[1].content.split('|')[0].strip.gsub( /\s+/, " " )
		rating = stream_count[i].content.strip.gsub( /\s+/, " " )
		result2.push(Array.new([artist,song,rating]))
	end
	
CSV.open('output/streaming_counts.csv', 'wb') do |csv|
	for i in 0..result2.length()-1
		csv << result2[i]
	end
end
	
