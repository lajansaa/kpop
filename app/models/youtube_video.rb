class YoutubeVideo < ApplicationRecord
  belongs_to :artiste, :foreign_key => "artiste_id"
  belongs_to :song
end
