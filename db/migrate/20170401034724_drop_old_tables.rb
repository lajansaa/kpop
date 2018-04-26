class DropOldTables < ActiveRecord::Migration[5.0]
  def change
    drop_table :youtube_video_ids
    drop_table :popularity_votes
    drop_table :mappings
    drop_table :artistes
    drop_table :albums
  end
end
