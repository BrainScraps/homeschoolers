class Student < ActiveRecord::Base
  attr_accessible :birth, :family_id, :grade, :name, :profile_picture, :gender

  has_many :outcomes
  belongs_to :family
end
