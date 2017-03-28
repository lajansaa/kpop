class YoutubeVideo < ApplicationRecord
  belongs_to :artiste_v2, :foreign_key => "artiste_id"
  belongs_to :song
end
