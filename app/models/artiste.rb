class Artiste < ApplicationRecord
  has_one :youtube_video
  has_many :nominees
end
