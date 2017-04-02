class RenameVotesToMcountdownVotes < ActiveRecord::Migration[5.0]
  def change
    rename_column :mcountdown_votes, :votes, :mcountdown_votes
  end
end
