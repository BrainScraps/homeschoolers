class Resource < ActiveRecord::Base
  attr_accessible :description, :name, :price, :upload, :url, :public

  belongs_to :educator
  has_and_belongs_to_many :outcomes
end
