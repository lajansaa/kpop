class DropDigitalSalesRelation < ActiveRecord::Migration[5.0]
  def change
    drop_table :digital_sales
    rename_table :digital_sale_v2s, :digital_sales
  end
end
