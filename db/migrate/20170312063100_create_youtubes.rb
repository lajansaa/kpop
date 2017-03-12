class CreateYoutubes < ActiveRecord::Migration[5.0]
  def change
    create_table :youtubes do |t|
      t.integer :artiste_id
      t.integer :song_id
      t.integer :video_id
      t.text :watch_link
      t.text :thumbnail_img

      t.timestamps
    end
  end
end
