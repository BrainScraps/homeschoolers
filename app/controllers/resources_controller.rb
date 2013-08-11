class ResourcesController < ApplicationController

  def index
    @resources = Resource.all
  end

  def my_new
      @resource = Resource.new
  end

    def my_create
      Resource.create(params["resource"])
      if @resource.save
        # redirect_to deals with routing
        redirect_to resources_index_path
      else
        # render Deals with the new view
        render "new"
      end
    end

  def show
      @resource = Resource.find(params[:id])
  end

  def destroy
      @resource = Resource.find(params[:id])
      @resource.destroy
      redirect_to resources_index_path
  end

  def edit
  end
end
