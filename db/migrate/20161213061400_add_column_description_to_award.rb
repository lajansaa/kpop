class AddColumnDescriptionToAward < ActiveRecord::Migration[5.0]
  def change
    add_column :awards, :description, :text
  end
end
