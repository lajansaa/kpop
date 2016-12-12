class RemoveColumnTotalCountFromDigitalSales < ActiveRecord::Migration[5.0]
  def change
    remove_column :digital_sales, :total_count
  end
end
