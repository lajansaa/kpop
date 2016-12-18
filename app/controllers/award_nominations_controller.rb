class AwardNominationsController < ApplicationController

  def show
    @award = Award.find_by(id: params[:award_id])
    @nomination = Nomination.find_by(award_id: params[:award_id], id: params[:id]) 
    @nomination_yv = YoutubeVideoId.find_by(artiste: @nomination.artiste, song: @nomination.song) 
    @nomination_as = Album.find_by(artiste: @nomination.artiste, name: @nomination.album) 
    @providers = DigitalServiceProvider.all 
  end

end
