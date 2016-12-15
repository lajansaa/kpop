class AwardNominationsController < ApplicationController

  def show
    @nomination = Nomination.find_by(award_id: params[:award_id], id: params[:id]) 
  end

end
