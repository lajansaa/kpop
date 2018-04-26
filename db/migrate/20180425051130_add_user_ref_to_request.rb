class AddUserRefToRequest < ActiveRecord::Migration[5.0]
  def change
    remove_column :listings, :seller_id
    # add_reference :listings, :seller, references: :users
    add_column :listings, :seller_id
  end
end
