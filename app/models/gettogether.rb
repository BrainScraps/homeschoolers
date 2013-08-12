class Gettogether < ActiveRecord::Base
  attr_accessible :description, :end_time, :lat, :long, :name, :picture, :start_time

  has_and_belongs_to_many :educators
end
