class AwardNominationsController < ApplicationController

  def show
    @award = Award.find_by(id: params[:award_id])
    @nomination = Nomination.find_by(award_id: params[:award_id], id: params[:id]) 
  end

end
