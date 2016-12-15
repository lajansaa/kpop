class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :artiste
      t.text :album_img

      t.timestamps
    end
  end
end
