class CreateDigitalSales < ActiveRecord::Migration[5.0]
  def change
    create_table :digital_sales do |t|
      t.date :vote_start
      t.date :vote_end
      t.string :award
      t.string :artiste
      t.string :song
      t.bigint :download_count
      t.bigint :streaming_count
      t.bigint :total_count

      t.timestamps
    end
  end
end
