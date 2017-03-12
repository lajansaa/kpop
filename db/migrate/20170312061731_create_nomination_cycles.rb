class CreateNominationCycles < ActiveRecord::Migration[5.0]
  def change
    create_table :nomination_cycles do |t|
      t.integer :award_id
      t.date :start_date
      t.date :end_date
      t.string :period_type

      t.timestamps
    end
  end
end
