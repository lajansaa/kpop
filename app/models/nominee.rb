class Nominee < ApplicationRecord
  belongs_to :nomination_cycle, :foreign_key => 'cycle_id'
end
