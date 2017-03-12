class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :name_eng
      t.string :name_kor
      t.integer :artiste_id
      t.integer :album_id
      t.string :mcountdown

      t.timestamps
    end
  end
end
