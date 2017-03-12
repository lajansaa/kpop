class CreateMcountdownVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :mcountdown_votes do |t|
      t.date :date_d
      t.integer :artiste_id
      t.integer :song_id
      t.float :votes

      t.timestamps
    end
  end
end
