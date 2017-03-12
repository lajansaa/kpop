class CreateDigitalSaleV2s < ActiveRecord::Migration[5.0]
  def change
    create_table :digital_sale_v2s do |t|
      t.date :date_d
      t.integer :artiste_id
      t.integer :song_id
      t.float :download_cnt
      t.float :stream_cnt

      t.timestamps
    end
  end
end
