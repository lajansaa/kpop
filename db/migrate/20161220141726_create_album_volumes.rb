class CreateAlbumVolumes < ActiveRecord::Migration[5.0]
  def change
    create_table :album_volumes do |t|
      t.date :vote_start
      t.date :vote_end
      t.string :award
      t.string :artiste
      t.string :song
      t.float :volume

      t.timestamps
    end
  end
end
