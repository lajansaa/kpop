require "open-uri"
require "csv"
require "json"

class CsvFetcher

	def self.popularity_votes_fetcher
		url = "http://mwave.interest.me/mcountdown/vote/preVote"
		
		doc = Nokogiri::HTML(open(url))
		result = Array.new
		
		#Top 3 artist
		top3_html_code = doc.css('.top3')[0].to_s
		top3_doc = Nokogiri::HTML(top3_html_code)
		top_items = top3_doc.xpath('//dd')
		i = 0
		artist = ""
		song = ""
		rating = 0
		top_items.each do |top_item|
			item_str = top_item.content.strip.gsub( /\s+/, " " ).gsub( /%/, "")
			if item_str != "Play"
				if i % 2 == 0
					item_split = item_str.split('/')
					song = item_split[0].strip
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
			result.push(Array.new([artists_doc[i].content.strip,songs_doc[i].content.strip,ratings_doc[i].content.strip.gsub( /%/, "")]))
		end
		
		vote_start_raw = doc.css('strong')[0].to_s[30..37]
		vote_start = DateTime.parse(vote_start_raw).strftime("%Y-%m-%d")
		vote_end_raw = doc.css('strong')[0].to_s[47..54]
		vote_end = DateTime.parse(vote_end_raw).strftime("%Y-%m-%d")
		
		
		CSV.open('./lib/imports/popularity_votes.csv', 'wb') do |csv|
			headers = ["vote_start", "vote_end", "award", "artiste", "song", "votes", "created_at", "updated_at"]
			csv << headers
			for i in 0..result.length()-1
				csv << [vote_start, vote_end, "MCOUNTDOWN", result[i][0], result[i][1], result[i][2], Time.now, Time.now]
			end
		end
	end

	def self.youtube_views_fetcher
		api_key = "AIzaSyDV_t5nfmm_7LVJKrrpn1dBEku8ykfNkCc"
    log = Logger.new(STDOUT)
    array = CSV.read('./lib/imports/popularity_votes.csv')

		CSV.open('./lib/imports/youtube_views.csv', 'wb') do |csv|
			headers = ["vote_start", "vote_end", "award", "artiste", "song", "views", "created_at", "updated_at"]
			csv << headers
    	array.drop(1).each do |record|
    		record_artiste = record[3].gsub(/\s/, "+")
    		record_song = record[4].gsub(/\s/, "+")
				
				search_term = "#{record_artiste}+#{record_song}+offical+mv"
				search_url = "https://www.googleapis.com/youtube/v3/search?part=snippet&q=#{search_term}&type=video&order=viewCount&key=#{api_key}"
				request = Typhoeus::Request.new(search_url)
				response = JSON.parse(request.run.body)
				video_id = response["items"].first["id"]["videoId"]
				
				stats_url = "https://www.googleapis.com/youtube/v3/videos?id=#{video_id}&key=#{api_key}&fields=items(id,snippet(channelId,title,categoryId),statistics)&part=snippet,statistics"
				request = Typhoeus::Request.new(stats_url)
				response = JSON.parse(request.run.body)
				view_count = response["items"].first["statistics"]["viewCount"]
				log.info("Inserting view count for #{record_artiste}'s #{record_song}")
        csv << [record[0], record[1], record[2], record[3], record[4], view_count, Time.now, Time.now]
			end
		end
	end

end




