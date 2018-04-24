class AwardsController < ApplicationController
  
  def index
  	@awards = Rails.cache.fetch('awards', :expires_in => 5.minutes) {
      Award.all.order("name")
    }
  end

  def show
    @award = Award.find(params[:id])
    @nomination_cycles = NominationCycle.where("award_id = ? and ranking_present", @award).order(id: :desc)
    @max_cycyle_id = @nomination_cycles.first.id
    @mcountdown_nominees = Nominee.where(:cycle_id => @max_cycyle_id).sort_by {|r| r.mcountdown_ranking.ranking}
  end

  def from_nomination_cycle
    @selected = Nominee.where(:cycle_id => params[:cycle_id]).sort_by {|r| r.mcountdown_ranking.ranking}
    @award_id = params[:award_id]
    respond_to do |format|
      format.js
    end
  end

  def fetch_mcountdown_nominees
    FetcherWorker.perform_async()
    respond_to do |format|
      format.html
    end
  end

end
	