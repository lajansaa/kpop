class CreatePopularityVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :popularity_votes do |t|
      t.date :vote_start
      t.date :vote_end
      t.string :award
      t.string :artiste
      t.string :song
      t.float :votes

      t.timestamps
    end
  end
end
