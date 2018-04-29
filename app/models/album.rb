class Album < ApplicationRecord
  has_many :songs
  has_many :listings
end
