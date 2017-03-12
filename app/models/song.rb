class Song < ApplicationRecord
  belongs_to :album
  has_one :youtube_video, optional: true
end
