class ChangeColumnVideoIdInYoutubeVideo < ActiveRecord::Migration[5.0]
  def change
    change_column :youtube_videos, :video_id, :string
  end
end
