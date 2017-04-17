class RenameAlbumV2ToAlbum < ActiveRecord::Migration[5.0]
  def change
    rename_table :album_v2s, :albums
  end
end
