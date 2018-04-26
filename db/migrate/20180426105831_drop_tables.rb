class DropTables < ActiveRecord::Migration[5.0]
  def change
    drop_table :user_v2s
    drop_table :products
    drop_table :order_statuses
    drop_table :line_items
    drop_table :carts
  end
end
