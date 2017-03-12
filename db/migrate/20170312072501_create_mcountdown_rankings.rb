class CreateMcountdownRankings < ActiveRecord::Migration[5.0]
  def change
    create_table :mcountdown_rankings do |t|
      t.integer :nominee_id
      t.float :mcountdown_votes
      t.float :normalized_mv
      t.float :youtube_views
      t.float :normalized_yv
      t.float :download_cnt
      t.float :stream_cnt
      t.float :normalized_ds
      t.float :normalized_remainder
      t.float :normalized_score
      t.integer :ranking

      t.timestamps
    end
  end
end
