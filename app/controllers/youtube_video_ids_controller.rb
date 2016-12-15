class YoutubeVideoIdsController < ApplicationController

  def thumbnail_img
    api_key= ENV['GOOGLE_API_KEY']

    YoutubeVideoId.all.each do |y|
      search_url = "https://www.googleapis.com/youtube/v3/videos?id=#{y.video_id}&key=#{api_key}&fields=items(id,snippet(thumbnails),statistics)&part=snippet,statistics"
      search_request = Typhoeus::Request.new(search_url)
      search_response = JSON.parse(search_request.run.body)
      thumbnail_img = search_response["items"].first["snippet"]["thumbnails"]["medium"]["url"]
      y.update_attributes(:thumbnail_img => thumbnail_img)
    end

    render text: "Update Complete"
  end

end
