class Nomination < ApplicationRecord
  acts_as_copy_target
  belongs_to :award

  #scope :for_week_of, -> (start_date) { where(vote_start: ) }
end
