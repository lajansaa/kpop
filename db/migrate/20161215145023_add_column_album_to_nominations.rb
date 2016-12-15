class AddColumnAlbumToNominations < ActiveRecord::Migration[5.0]
  def change
    add_column :nominations, :album, :string
  end
end
