class RenameYoutubeViewsV2ToYoutubeViews < ActiveRecord::Migration[5.0]
  def change
    rename_table :youtube_view_v2s, :youtube_views
  end
end
