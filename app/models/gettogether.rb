class Gettogether < ActiveRecord::Base
  attr_accessible :description, :end_time, :lat, :long, :name, :picture, :start_time, :address, :city, :state

  has_and_belongs_to_many :educators

  geocoded_by :prep_address

  after_validation :geocode

  #before_save :convert_datetimes

  def convert_datetimes(startz, endz)

    new_time = DateTime.strptime(startz, '%m/%d/%Y %I:%M %P')

    self.start_time = new_time

    new_time2 = DateTime.strptime(endz, '%m/%d/%Y %I:%M %P')

    self.end_time = new_time2

  end    

  def prep_address

    [address, city, state].compact.join(',')

  end

end
