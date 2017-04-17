class AwardNomineesController < ApplicationController
  def show
    @award = Award.find(params[:award_id])
    @nominee = Nominee.find(params[:id])
    @providers = DigitalServiceProvider.all 
  end
end
