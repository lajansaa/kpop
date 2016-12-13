class AddColumnToAward < ActiveRecord::Migration[5.0]
  def change
    add_column :awards, :masthead_img, :text
  end
end
