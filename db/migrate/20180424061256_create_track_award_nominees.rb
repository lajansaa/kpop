class CreateTrackAwardNominees < ActiveRecord::Migration[5.0]
  def change
    create_table :track_award_nominees do |t|
      t.integer :user_id
      t.integer :award_id
      t.integer :nominee_id

      t.timestamps
    end
  end
end
