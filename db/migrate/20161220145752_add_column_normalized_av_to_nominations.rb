class AddColumnNormalizedAvToNominations < ActiveRecord::Migration[5.0]
  def change
    add_column :nominations, :normalized_av, :float
  end
end
