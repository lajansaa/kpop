class AddDsProvidersToSongs < ActiveRecord::Migration[5.0]
  def change
    add_column :songs, :melon, :string
    add_column :songs, :bugs, :string
    add_column :songs, :bainil, :string
    add_column :songs, :genie, :string
  end
end
