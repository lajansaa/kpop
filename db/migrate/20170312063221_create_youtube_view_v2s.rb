class CreateYoutubeViewV2s < ActiveRecord::Migration[5.0]
  def change
    create_table :youtube_view_v2s do |t|
      t.date :date_d
      t.integer :youtube_id
      t.float :views

      t.timestamps
    end
  end
end
