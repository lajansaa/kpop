class DropTableYoutubeViews < ActiveRecord::Migration[5.0]
  def change
    drop_table :youtube_views
  end
end
