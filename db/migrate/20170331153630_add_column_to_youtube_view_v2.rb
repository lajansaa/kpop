class AddColumnToYoutubeViewV2 < ActiveRecord::Migration[5.0]
  def change
    add_column :youtube_view_v2s, :artiste_id, :integer
    add_column :youtube_view_v2s, :song_id, :integer
  end
end
