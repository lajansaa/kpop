module Api::V1
  class UsersController < ApplicationController
    # before_action :authenticate_user!

    def following
      @followings = TrackAwardNominee.where(:user_id => 1)
      # @followings = TrackAwardNominee.where(:user_id => current_user.id)
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
      # render json: { user_name: current_user.name,
      #                followings: followings
      #              }
      render json: { user_name: 'Isa',
                     followings: followings
                   }
    end
  end
end
