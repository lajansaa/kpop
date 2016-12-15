class AddColumnAlbumToPopularityVotes < ActiveRecord::Migration[5.0]
  def change
    add_column :popularity_votes, :album, :string
  end
end
