class Resource < ActiveRecord::Base
  attr_accessible :description, :name, :price, :upload, :url, :public, :subject, :grade_level

   scope :public_resources, where(public: true)
   # scope :my_resources, where(educator_id: current_educator.id)

   # how to use these scopes:
   # Resource.public_resources.each
   # Resource.my_resources

  belongs_to :educator
  has_and_belongs_to_many :outcomes

end

