class EducatorsController < ApplicationController

  def show 
    @educator = Educator.find(params[:id])
  end

end