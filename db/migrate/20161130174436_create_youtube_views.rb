class CreateYoutubeViews < ActiveRecord::Migration[5.0]
  def change
    create_table :youtube_views do |t|
      t.date :vote_start
      t.date :vote_end
      t.string :award
      t.string :artiste
      t.string :song
      t.float :views

      t.timestamps
    end
  end
end
