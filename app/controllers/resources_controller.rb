class ResourcesController < ApplicationController

  # all resources where public => true
  def index
    @public_resources
  end

  # only educators can create a new resource
  # educator_id must be part of the new resource record
  # only educators execute methods with my_ prepended
  def my_new
      @resource = Resource.new
  end

  # saves a  new resource
  def my_create
    Resource.create(params["resource"])
    if @resource.save
      # redirect_to deals with routing
      redirect_to my_resources_path
    else
      # render resources with the my_new view
      render "my_new"
    end
  end

  def my_resources
      @my_resources
  end

  def show
      @resource = Resource.find(params[:id])
  end

  def my_destroy
      @resource = Resource.find(params[:educator_id])
      @resource.destroy
      redirect_to my_resources_path
  end

  def edit
    @resource = Resource.find(params[:educator_id])

  end
end
