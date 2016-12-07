class CreateNominations < ActiveRecord::Migration[5.0]
  def change
    create_table :nominations do |t|
      t.string :award
      t.date :vote_start
      t.date :vote_end
      t.string :artiste
      t.string :song
      t.bigint :download_count
      t.bigint :streaming_count
      t.bigint :youtube_views
      t.float :popularity_votes
      t.float :normalized_ds
      t.float :normalized_yv
      t.float :normalized_pv
      t.float :aggregate_score

      t.timestamps
    end
  end
end
