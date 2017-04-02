class AdminsController < ApplicationController

  def index
    @award = Award.find(1)
    @to_be_checked_artistes = Artiste.all.order('created_at DESC, updated_at, mcountdown')
    @to_be_checked_songs = Song.all.order('created_at DESC, updated_at, mcountdown')
    @to_be_checked_yt_videos = YoutubeVideo.all.order('created_at DESC, updated_at')
  end

  def create
    if params[:artiste_id]
      @artiste_new_name_eng = params[:artiste][:name_eng]
      @artiste_new_name_kor = params[:artiste][:name_kor]
      if @artiste_new_name_eng
        Artiste.find(params[:artiste_id]).update(:name_eng => @artiste_new_name_eng)
        flash[:notice] = "Artiste English Name was successfuly updated!"
      else
        Artiste.find(params[:artiste_id]).update(:name_kor => @artiste_new_name_kor)
        flash[:notice] = "Artiste Korean Name was successfuly updated!"
      end
    end
    
    if params[:song_id]
      @song_new_name_eng = params[:song][:name_eng]
      @song_new_name_kor = params[:song][:name_kor]
      if @song_new_name_eng
        Song.find(params[:song_id]).update(:name_eng => @song_new_name_eng)
        flash[:notice] = "song English Name was successfuly updated!"
      else
        Song.find(params[:song_id]).update(:name_kor => @song_new_name_kor)
        flash[:notice] = "Song Korean Name was successfuly updated!"
      end
    end

    if params[:yt_id]
      @yt_video_id = params[:yt][:video_id]
      if @yt_video_id == 'NA'
        YoutubeVideo.find(params[:yt_id]).update(:video_id => 'NA',
                                                 :watch_link => nil,
                                                 :thumbnail_img => nil,
                                                 :video_title => nil)
      else
        api_key = ENV['GOOGLE_API_KEY']
        url = "https://www.googleapis.com/youtube/v3/videos?id=#{@yt_video_id}&key=#{api_key}&fields=items(id,snippet(title,thumbnails),statistics)&part=snippet,statistics"
        time_now = Time.now.in_time_zone("Seoul")
        formatted_time_now = time_now.strftime("%Y-%m-%d")
        request = Typhoeus::Request.new(url)
        response = JSON.parse(request.run.body)["items"].first
        YoutubeVideo.find(params[:yt_id]).update(:video_id => @yt_video_id,
                                                 :watch_link => "https://www.youtube.com/watch?v=#{@yt_video_id}",
                                                 :thumbnail_img => response["snippet"]["thumbnails"]["medium"]["url"],
                                                 :video_title => response["snippet"]["title"]
                                                )
        YoutubeView.where(:date_d => formatted_time_now,
                            :youtube_id => params[:yt_id]
                            )
                     .update(:views => response["statistics"]["viewCount"])
      end
    end
    redirect_to admins_path
  end

end
