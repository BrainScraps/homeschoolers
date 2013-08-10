class EducatorsController < ApplicationController

  def show 
    @educator = Educator.find_by_username(params[:username])
  end
end