class StaticPagesController < ApplicationController


  # all resources where public => true
  def home
    @public_resources = Resource.where("public=true")
  end

end
