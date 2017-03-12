class CreateAlbumV2s < ActiveRecord::Migration[5.0]
  def change
    create_table :album_v2s do |t|
      t.string :name_eng
      t.string :name_kor
      t.text :profile_img

      t.timestamps
    end
  end
end
