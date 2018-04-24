class CreateListings < ActiveRecord::Migration[5.0]
  def change
    create_table :listings do |t|
      t.integer :seller_id
      t.string :album_id
      t.float :price

      t.timestamps
    end
  end
end
