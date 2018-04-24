class AddSubtotalTaxShippingTotalOrderStatusToCart < ActiveRecord::Migration[5.0]
  def change
    add_column :carts, :subtotal, :decimal, precision: 12, scale: 3
    add_column :carts, :tax, :decimal, precision: 12, scale: 3
    add_column :carts, :shipping, :decimal, precision: 12, scale: 3
    add_column :carts, :total, :decimal, precision: 12, scale: 3
    add_column :carts, :order_status, :integer
  end
end
