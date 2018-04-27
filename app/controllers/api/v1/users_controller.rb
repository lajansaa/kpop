module Api::V1
  class UsersController < ApplicationController
    # before_action :authenticate_user!

    def following
      @followings = TrackAwardNominee.where(:user_id => 1)
      followings = []
      @followings.each do |f|
        followings.push({ award_name: f.award.name,
                          nominee_name: f.nominee.artiste.name_eng,
                          nominee_profile_img: f.nominee.artiste.profile_img,
                          song_name: f.nominee.song.name_eng,
                          ranking: f.nominee.mcountdown_ranking.ranking
                        })
      end
      render json: { user_name: 'Isa',
                     followings: followings
                   }
    end
  end
end
