class CreateRequests < ActiveRecord::Migration[5.0]
  def change
    create_table :requests do |t|
      t.integer :listing_id
      t.integer :customer_id
      t.integer :quantity
      t.boolean :approved
      t.boolean :paid

      t.timestamps
    end
  end
end
