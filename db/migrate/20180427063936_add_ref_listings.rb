class AddRefListings < ActiveRecord::Migration[5.0]
  def change
    remove_column :listings, :seller_id
    add_reference :listings, :user, foreign_key: true
    rename_column :listings, :user_id, :seller_id
  end
end
