module Api::V1
  class UsersController < ApplicationController
    before_action :authenticate_user!

    def following
      @followings = TrackAwardNominee.where(:user_id => current_user.id)
      followings = []
      @followings.each do |f|
        followings.push({ award_id: f.award.id,
                          award_name: f.award.name,
                          nomination_cycle: f.nominee.nomination_cycle.start_date.to_s + "~" + f.nominee.nomination_cycle.end_date.to_s,
                          nominee_id: f.nominee.id,
                          nominee_name: f.nominee.artiste.name_eng,
                          nominee_profile_img: f.nominee.artiste.profile_img,
                          song_name: f.nominee.song.name_eng,
                          ranking: f.nominee.mcountdown_ranking.ranking
                        })
      end
      render json: { user_name: current_user.name,
                     user_avatar: current_user.image.url,
                     followings: followings
                   }
    end

    def avatar
      User.update(current_user.id, :image => params["uploaded_avatar"])
      # cannot use current_user.image.url because
      # it's a variable that stores the old user object
      avatar_link = User.find(current_user.id).image.url
      render json: avatar_link
    end

    def info
      render json: { user_name: current_user.name,
                     user_avatar: current_user.image.url.nil? ? 'n/a' : current_user.image.url
                   }
    end

    private

    def avatar_params
      params.permit(:uploaded_avatar)
    end

  end
end
