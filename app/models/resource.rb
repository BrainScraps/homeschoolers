class Resource < ActiveRecord::Base
  attr_accessible :description, :name, :price, :upload, :url, :public

  belongs_to :educator
  has_and_belongs_to_many :outcomes

  def all_public_resources
    @public_resources = Resource.where(public: true)
  end

  def my_resources
    educator = current_educator
    @my_resources = Resource.where(educator_id: current_educator.id)
  end

end
