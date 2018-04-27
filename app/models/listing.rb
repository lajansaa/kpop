class Listing < ApplicationRecord
  has_many :request
  belongs_to :album
  belongs_to :user
end
