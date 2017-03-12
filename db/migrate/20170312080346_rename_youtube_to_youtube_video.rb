class RenameYoutubeToYoutubeVideo < ActiveRecord::Migration[5.0]
  def change
    rename_table :youtubes, :youtube_videos
  end
end
