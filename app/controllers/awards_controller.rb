class AwardsController < ApplicationController
  
  def index
  	@awards = Award.all.order("name")
  end

  def show
    @award = Award.find(params[:id])
    @nomination_cycles = NominationCycle.where(:award_id => @award).order(id: :desc)
    @max_cycyle_id = @nomination_cycles.first.id
    @mcountdown_nominees = Nominee.where(:cycle_id => @max_cycyle_id).sort_by {|r| r.mcountdown_ranking.ranking}
  end

  def from_nomination_cycle
    @selected = Nominee.where(:cycle_id => params[:cycle_id]).sort_by {|r| r.mcountdown_ranking.ranking}
    respond_to do |format|
      format.js
    end
  end

end
	