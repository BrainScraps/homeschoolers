class ResourcesController < ApplicationController
  # GET /resources
  # GET /resources.json
  def index
    @public_resources = Resource.where("public=true").order('grade_level ASC','subject ASC','name ASC')
  end

  def my_index
    @resources = Resource.where(educator_id: current_educator.id)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @resources }
    end
  end

  def add_resource
    @resource = Resource.new
    @outcome = Outcome.find_by_id(params[:id])

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @resource }
    end
  end

  # GET /resources/1
  # GET /resources/1.json
  def show
    @resource = Resource.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @resource }
    end
  end

  # GET /resources/new
  # GET /resources/new.json
  def new
    @resource = Resource.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @resource }
    end
  end

  # GET /resources/1/edit
  def edit
    @resource = Resource.find(params[:id])


  end

  # POST /resources
  # POST /resources.json
  def create
    @resource = Resource.new(params[:resource])
    @resource.educator_id = current_educator.id
    @resource.save




    respond_to do |format|
      if @resource.save
        if params[:outcome_id].present?
          Outcome.find_by_id(params[:outcome_id]).update_attribute(:resource_id, @resource.id)
          redirect_to root_path
        end
        format.html { redirect_to @resource, notice: 'Resource was successfully created.' }
        format.json { render json: @resource, status: :created, location: @resource }
      else
        format.html { render action: "new" }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /resources/1
  # PUT /resources/1.json
  def update
    @resource = Resource.find(params[:id])

    respond_to do |format|
      if @resource.update_attributes(params[:resource])
        format.html { redirect_to @resource, notice: 'Resource was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resources/1
  # DELETE /resources/1.json
  def destroy
    @resource = Resource.find(params[:id])
    @resource.destroy

    respond_to do |format|
      format.html { redirect_to root_path }
      format.json { head :no_content }
    end
  end
end
