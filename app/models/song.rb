class Song < ApplicationRecord
  belongs_to :album, optional: true
  has_one :youtube_video
  has_many :nominees
  belongs_to :artiste
  has_many :digital_service_providers_links
end
