class CreateYoutubeVideoIds < ActiveRecord::Migration[5.0]
  def change
    create_table :youtube_video_ids do |t|
      t.string :artiste
      t.string :song
      t.string :video_id
      t.text :link

      t.timestamps
    end
  end
end
