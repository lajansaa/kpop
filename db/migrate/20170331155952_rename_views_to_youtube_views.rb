class RenameViewsToYoutubeViews < ActiveRecord::Migration[5.0]
  def change
    rename_column :youtube_view_v2s, :views, :youtube_views 
  end
end
