class Outcome < ActiveRecord::Base
  attr_accessible :description, :grade_level, :subject, :resource_id, :due_date, :student_id, :finish_date

  belongs_to :student
  belongs_to :resources
end


