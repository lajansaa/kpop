require "nokogiri"
require "open-uri"
require "csv"

url = "http://onehallyu.com/topic/3691-hanteo-sales-thread-updates-1st-page-updated-nov-20/"

doc = Nokogiri::HTML(open(url))

records = doc.css(".bbc_center")
i = 0
result = Array.new
artist = ""
song = ""
rating = 0

records.each do |record|
	record_splits = record.content.split('-')
	# puts record_splits.length()
	if record_splits.length() >= 3 && record.content.length() > 30 && record.content.length() < 100
		artist = record_splits[0].gsub("\"","")
		song = record_splits[1].gsub("\"","")
		rating = record_splits[2].split[0].gsub("\"","")
		#puts date_update = record_splits[2].split[3,4]
		result.push(Array.new([artist,song,rating]))
	end
	i += 1
end

CSV.open('output/album_sales.csv', 'wb') do |csv|
	for i in 0..result.length()-1
		csv << result[i]
	end
end