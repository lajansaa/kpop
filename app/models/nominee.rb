class Nominee < ApplicationRecord
  belongs_to :nomination_cycle, :foreign_key => 'cycle_id'
  has_one :mcountdown_ranking
  belongs_to :artiste
  belongs_to :song
end
