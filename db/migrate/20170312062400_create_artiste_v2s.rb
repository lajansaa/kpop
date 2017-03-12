class CreateArtisteV2s < ActiveRecord::Migration[5.0]
  def change
    create_table :artiste_v2s do |t|
      t.string :profile_img
      t.string :name_eng
      t.string :name_kor
      t.string :mcountdown

      t.timestamps
    end
  end
end
