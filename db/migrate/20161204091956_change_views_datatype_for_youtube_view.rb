class ChangeViewsDatatypeForYoutubeView < ActiveRecord::Migration[5.0]
  def change
    change_column :youtube_views, :views, :bigint
  end
end
