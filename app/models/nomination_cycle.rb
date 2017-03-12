class NominationCycle < ApplicationRecord
  belongs_to :award
  has_many :nominees
end
