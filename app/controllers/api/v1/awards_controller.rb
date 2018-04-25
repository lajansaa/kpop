module Api::V1
  class AwardsController < ApplicationController
  
    def index
    	@awards = Award.select("id, name, profile_img").order(:name)

      render json: @awards
    end

    def show
      @award = Award.find(params[:id])
      @nomination_cycles = NominationCycle.where("award_id = ? and ranking_present", @award).order(id: :desc)
      @max_cycle_id = @nomination_cycles.first.id
      @nominees = Nominee.all
      # @mcountdown_nominees = Nominee.where(:cycle_id => @max_cycyle_id).sort_by {|r| r.mcountdown_ranking.ranking}

      render json: {award: @award,
                    nomination_cycles: @nomination_cycles,
                    max_cycle_id: @max_cycle_id,
                    nominees: @nominees
                   }
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
end
	