class AddRankingPresentToNominationCycles < ActiveRecord::Migration[5.0]
  def change
    add_column :nomination_cycles, :ranking_present, :boolean, default: false
  end
end
