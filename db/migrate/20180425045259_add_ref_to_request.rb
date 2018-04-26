class AddRefToRequest < ActiveRecord::Migration[5.0]
  def change
    remove_column :requests, :listing_id
    add_reference :requests, :listing, foreign_key: true
  end
end
