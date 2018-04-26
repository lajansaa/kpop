module Api::V1
  class AwardNomineesController < ApplicationController
    before_action :authenticate_user!, only: [:track]

    def show
      @award = Award.find(params[:award_id])
      @nominee = Nominee.find(params[:id])
      @provider_links = @nominee.song.digital_service_providers_links
      
      digital_service_providers = {}
      @provider_links.each do |dsp|
        digital_service_providers[dsp.digital_service_provider.name] = dsp.link
      end

      nominee = { artiste: { 
                    name_eng: @nominee.artiste.name_eng,
                    name_kor: @nominee.artiste.name_kor,
                    profile_img: @nominee.artiste.profile_img
                  },
                  song: {
                    name_eng: @nominee.song.name_eng,
                    name_kor: @nominee.song.name_kor
                  },
                  ranking: {
                    digital_sales: @nominee.mcountdown_ranking.normalized_ds,
                    youtube_views: @nominee.mcountdown_ranking.normalized_yv,
                    votes: @nominee.mcountdown_ranking.normalized_mv,
                    remainder: @nominee.mcountdown_ranking.remainder,
                    score: @nominee.mcountdown_ranking.score,
                    ranking: @nominee.mcountdown_ranking.ranking
                  },
                  breakdown: {
                    digital_sales: {
                      download_cnt: @nominee.mcountdown_ranking.download_cnt,
                      stream_cnt: @nominee.mcountdown_ranking.stream_cnt,
                      digital_service_providers: digital_service_providers,
                      profile_img: "https://ccmworld.files.wordpress.com/2013/07/gaon.jpg"
                    },
                    youtube_views: {
                      video_present: @nominee.song.youtube_video.video_id == 'NA' ? false : true,
                      view_cnt: @nominee.mcountdown_ranking.youtube_views,
                      thumbnail_img: @nominee.song.youtube_video.thumbnail_img,
                      video_link: @nominee.song.youtube_video.watch_link
                    },
                    mcountdown_votes: {
                      votes: @nominee.mcountdown_ranking.mcountdown_votes,
                      profile_img: "https://image.ibb.co/k9YaHb/m_countdown_logo_sgxclusive.png"
                    }
                  }
                }
      render json: {award: @award,
                    nominee: nominee
                   }
    end

    def sign_in_modal
      respond_to do |format|
        format.html
        format.js
      end
    end

    def add_to_cart_modal
      respond_to do |format|
        format.html
        format.js
      end
    end

    def track
      track_id = params[:track_id]
      if track_id == '1'
        TrackAwardNominee.new(user_id: current_user.id, award_id: params[:award_id], nominee_id: params[:nominee_id]).save!
      else
        TrackAwardNominee.where(user_id: current_user.id, award_id: params[:award_id], nominee_id: params[:nominee_id]).destroy_all
      end
    end
  end
end
