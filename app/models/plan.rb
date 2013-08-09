class Plan < ActiveRecord::Base
  attr_accessible :confirmation, :educator_id, :family_id, :gettogether_id, :students

  belongs_to :gettogether
  belongs_to :family
end
