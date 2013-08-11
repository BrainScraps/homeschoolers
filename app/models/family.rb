class Family < ActiveRecord::Base
  attr_accessible :description, :motto, :name, :photo

  has_many :plans
  has_many :gettogethers, through: :plans
  has_one :educator
  has_many :students
end
