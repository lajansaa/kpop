class AddColumnThumbnailImgToYoutubevideoid < ActiveRecord::Migration[5.0]
  def change
    add_column :youtube_video_ids, :thumbnail_img, :text
  end
end
