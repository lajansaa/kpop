module Api::V1
  class AwardNomineesController < ApplicationController
    before_action :authenticate_user!, only: [:track]

    def show
      @award = Award.find(params[:award_id])
      @nominee = Nominee.find(params[:id])
      @provider_links = @nominee.song.digital_service_providers_links
      render json: {award: @award,
                    nominee: @nominee,
                    provider_links: @provider_links
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
