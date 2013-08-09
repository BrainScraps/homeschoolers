class Completion < ActiveRecord::Base
  attr_accessible :date, :outcome_id, :score, :student_id

  belongs_to :outcome
  belongs_to :student

end
