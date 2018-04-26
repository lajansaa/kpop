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
      # @nominees = Nominee.all
      # @mcountdown_nominees = Nominee.where(:cycle_id => @max_cycle_id)
      @mcountdown_nominees = Nominee.joins(:nomination_cycle).where("award_id = ? and ranking_present", @award)
      nominees = []
      @mcountdown_nominees.each do |n|
        nominees.push({ award_id: 1,
                        cycle_id: n.cycle_id,
                        nominee_id: n.id,
                        artiste: {
                          name_eng: n.artiste.name_eng,
                          name_kor: n.artiste.name_kor,
                          profile_img: n.artiste.profile_img
                        },
                        song: {
                          name_eng: n.song.name_eng,
                          name_kor: n.song.name_kor
                        },
                        ranking: {
                          digital_sales: n.mcountdown_ranking.normalized_ds,
                          youtube_views: n.mcountdown_ranking.normalized_yv,
                          votes: n.mcountdown_ranking.normalized_mv,
                          remainder: n.mcountdown_ranking.remainder,
                          score: n.mcountdown_ranking.score,
                          ranking: n.mcountdown_ranking.ranking
                        }
                      })
      end
      render json: {award: @award,
                    nomination_cycles: @nomination_cycles,
                    max_cycle_id: @max_cycle_id,
                    nominees: nominees
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
	