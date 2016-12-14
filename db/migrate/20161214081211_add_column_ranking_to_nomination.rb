class AddColumnRankingToNomination < ActiveRecord::Migration[5.0]
  def change
    add_column :nominations, :ranking, :integer
  end
end
