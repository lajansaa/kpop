class AddColumnAlbumVolumeToNominations < ActiveRecord::Migration[5.0]
  def change
    add_column :nominations, :album_volume, :float
  end
end
