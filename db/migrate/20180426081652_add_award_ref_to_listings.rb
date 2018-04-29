class AddAwardRefToListings < ActiveRecord::Migration[5.0]
  def change
    remove_column :listings, :album_id
    add_reference :listings, :album, foreign_key: true
  end
end
