class AddColumnAwardIdToNomination < ActiveRecord::Migration[5.0]
  def change
    add_column :nominations, :award_id, :integer
    add_index :nominations, :award_id
  end
end
