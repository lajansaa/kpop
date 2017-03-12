class Award < ApplicationRecord
  has_many :nominations
  has_many :nomination_cycles
end
