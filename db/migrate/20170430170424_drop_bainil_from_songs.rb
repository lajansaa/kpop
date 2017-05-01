class DropBainilFromSongs < ActiveRecord::Migration[5.0]
  def change
    remove_column :songs, :bainil
  end
end
