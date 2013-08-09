class Family < ActiveRecord::Base
  attr_accessible :description, :motto, :name, :photo

  has_many :plans
  has_many :gettogethers, through: :plans
end
