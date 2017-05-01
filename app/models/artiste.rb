class Artiste < ApplicationRecord
  has_one :youtube_video
  has_many :nominees
  has_many :songs
end
