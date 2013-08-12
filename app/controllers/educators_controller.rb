class EducatorsController < ApplicationController

  def show 
    @educator = Educator.find(params[:id])
  end

  def edit
    @educator = Educator.find(params[:id])
  end

end