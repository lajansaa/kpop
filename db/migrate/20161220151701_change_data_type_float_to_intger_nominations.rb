class ChangeDataTypeFloatToIntgerNominations < ActiveRecord::Migration[5.0]
  def change
    change_column :nominations, :album_volume, :integer
  end
end
