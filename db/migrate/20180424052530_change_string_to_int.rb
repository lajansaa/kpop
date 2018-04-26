class ChangeStringToInt < ActiveRecord::Migration[5.0]
  def change
    change_column :listings, :album_id, 'integer USING CAST(album_id AS integer)'
  end
end
