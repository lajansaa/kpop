class CreateNominees < ActiveRecord::Migration[5.0]
  def change
    create_table :nominees do |t|
      t.integer :cycle_id
      t.integer :artiste_id
      t.integer :song_id

      t.timestamps
    end
  end
end
