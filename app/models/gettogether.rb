class Gettogether < ActiveRecord::Base
  attr_accessible :description, :end_time, :lat, :long, :name, :picture, :start_time

  has_many :plans
  has_many :families, through: :plans
end
