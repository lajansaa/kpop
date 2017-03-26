class Song < ApplicationRecord
  belongs_to :album, optional: true
  has_one :youtube_video
end
