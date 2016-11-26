
require "nokogiri"
require "open-uri"
require "csv"


url = "http://mwave.interest.me/mcountdown/vote/preVote"

doc = Nokogiri::HTML(open(url))

result = Array.new

#Top 3 artist
top3_html_code = doc.css('.top3')[0].to_s
top3_doc = Nokogiri::HTML(top3_html_code)
top_items = top3_doc.xpath('//dd')
i = 0
song = ""
artist = ""
rating = 0
top_items.each do |top_item|
	item_str = top_item.content.strip.gsub( /\s+/, " " )
	if item_str != "Play"
		if i % 2 == 0
			item_split = item_str.split('/')
			song = item_split[0]
			artist = item_split[1].strip
		else 
			rating = item_str
			result.push(Array.new([artist,song,rating]))
		end
		i += 1
	end
end

#The rest of the artists
artists_doc = doc.css('dd.artist')
songs_doc = doc.css('li dl .title a')[6..-1]
ratings_doc = doc.css('li dl .per')[3..-1]

for i in 0..artists_doc.length()-1
	result.push(Array.new([songs_doc[i].content.strip,artists_doc[i].content.strip,ratings_doc[i].content.strip]))
end

CSV.open('output/popularity.csv', 'wb') do |csv|
	for i in 0..result.length()-1
		csv << result[i]
	end
end