class Resource < ActiveRecord::Base
  attr_accessible :description, :name, :price, :upload, :url, :public, :subject, :grade_level, :educator_id


   scope :public_resources, where(public: true)
   # scope :my_resources, where(educator_id: current_educator.id)

   # how to use these scopes:
   # Resource.public_resources.each
   # Resource.my_resources

  belongs_to :educator
  has_many :outcomes

end

