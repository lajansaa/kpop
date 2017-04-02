class RenameRemainderAndScoreInMcountdownRanking < ActiveRecord::Migration[5.0]
  def change
    rename_column :mcountdown_rankings, :normalized_remainder, :remainder
    rename_column :mcountdown_rankings, :normalized_score, :score
  end
end
