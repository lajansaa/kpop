class AwardsController < ApplicationController
  
  def index
  	if params[:order]
  		sort_by = (params[:order] == 'name') ? 'name' : 'created_at'
  		@awards = Award.order(sort_by)
    elsif params[:keyword]
      	@awards = Award.where( [ "lower(name) like ?", "%#{params[:keyword]}%" ] )
    else
      	@awards = Award.all
    end
  end

  def show
    start_date, end_date = params[:start_date], params[:end_date]

    #Award.find(params[:id]).nominations.for_week_of(start_date, end_date)    

    @award = Award.find(params[:id])

    @nominations = @award.nominations
                    .where(vote_start: "2016-12-09")
                    .order(aggregate_score: :desc)
  end
end
	