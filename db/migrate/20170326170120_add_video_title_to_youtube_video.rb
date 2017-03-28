class AddVideoTitleToYoutubeVideo < ActiveRecord::Migration[5.0]
  def change
    add_column :youtube_videos, :video_title, :string
  end
end
