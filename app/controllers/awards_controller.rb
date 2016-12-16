class AwardsController < ApplicationController
  
  def index
  	if params[:keyword]
      	@awards = Award.where( [ "LOWER(name) LIKE ?", "%#{params[:keyword]}%" ] )
    else
      	@awards = Award.all.order("name")
    end
  end

  def show
    @voting_periods = Nomination.pluck("DISTINCT vote_start, vote_end") 
    @vote_start = params[:vote_start] ||= Nomination.maximum("vote_start")
    @vote_end = params[:vote_end] ||= Nomination.maximum("vote_end")
    sort_by = params[:order] ||= 'ranking'
    #Award.find(params[:id]).nominations.for_week_of(start_date, end_date)    
    @award = Award.find(params[:id])

    if params[:keyword]
        @nominations = @award.nominations
                             .where( [ "LOWER(artiste) LIKE ? OR LOWER(song) LIKE ? ", "%#{params[:keyword]}%", "%#{params[:keyword]}%" ] )
    else
        @nominations = @award.nominations
                             .where(vote_start: @vote_start, vote_end: @vote_end)
                             .order(sort_by)
    end
  end

end
	