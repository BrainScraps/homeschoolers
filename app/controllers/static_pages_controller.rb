class StaticPagesController < ApplicationController


  # all resources where public => true


  def home
    @public_resources = Resource.where("public=true").order('name ASC')
    @my_resources = Resource.where(educator_id: current_educator.id)
  end

end
