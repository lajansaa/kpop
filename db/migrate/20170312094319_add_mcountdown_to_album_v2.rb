class AddMcountdownToAlbumV2 < ActiveRecord::Migration[5.0]
  def change
    add_column :album_v2s, :mcountdown, :string
  end
end
