class CreateMappings < ActiveRecord::Migration[5.0]
  def change
    create_table :mappings do |t|
      t.string :artiste_eng
      t.string :artiste_kor
      t.string :song_eng
      t.string :song_kor
      t.string :mnet_artiste
      t.string :mnet_song
      t.string :youtube_artiste
      t.string :youtube_song
      t.string :gaon_artiste
      t.string :gaon_song
    end
  end
end
