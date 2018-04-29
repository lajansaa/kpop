class Listing < ApplicationRecord
  has_many :request
  belongs_to :album
  belongs_to :seller, class_name: "User", foreign_key: :seller_id
end
