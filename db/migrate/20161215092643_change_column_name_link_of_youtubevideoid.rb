class ChangeColumnNameLinkOfYoutubevideoid < ActiveRecord::Migration[5.0]
  def change
    rename_column :youtube_video_ids, :link, :watch_link
  end
end
