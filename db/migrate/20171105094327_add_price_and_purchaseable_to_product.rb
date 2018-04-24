class AddPriceAndPurchaseableToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :price, :decimal, :precision => 12, :scale => 3
    add_column :products, :purchaseable, :boolean
  end
end
