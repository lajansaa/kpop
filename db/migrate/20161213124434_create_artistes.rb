class CreateArtistes < ActiveRecord::Migration[5.0]
  def change
    create_table :artistes do |t|
      t.string :name_eng
      t.text :profile_img

      t.timestamps
    end
  end
end
