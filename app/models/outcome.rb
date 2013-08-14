class Outcome < ActiveRecord::Base
  attr_accessible :description, :grade_level, :subject, :resource_id, :due_date
  has_many :completions
  has_many :students, through: :completions
  has_and_belongs_to_many :resources
end
