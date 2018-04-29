class Award < ApplicationRecord
  has_many :nominations
  has_many :nomination_cycles
  has_many :track_award_nominees
end
