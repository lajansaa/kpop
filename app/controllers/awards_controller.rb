class AwardsController < ApplicationController
  def index
  	if params[:order]
  		sort_by = (params[:order] == 'name') ? 'name' : 'created_at'
  		@awards = Award.order(sort_by)
    elsif params[:keyword]
      	@awards = Award.where( [ "name like ?", "%#{params[:keyword]}%" ] )
    else
      	@awards = Award.all
    end
  end
end
