class AddColumnNormalizedRemainderToNomination < ActiveRecord::Migration[5.0]
  def change
    add_column :nominations, :normalized_remainder, :float
  end
end
