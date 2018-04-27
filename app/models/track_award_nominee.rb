class TrackAwardNominee < ApplicationRecord
  belongs_to :user
  belongs_to :award
  belongs_to :nominee
end
