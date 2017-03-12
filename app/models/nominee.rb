class Nominee < ApplicationRecord
  belong_to :nomination_cycle, :foreign_key => 'cycle_id'
end
