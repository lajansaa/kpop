class RemoveOrderStatusFromLineItem < ActiveRecord::Migration[5.0]
  def change
    remove_column :line_items, :order_status
  end
end
