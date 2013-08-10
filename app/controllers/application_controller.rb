class ApplicationController < ActionController::Base

  def forem_user
    current_educator
  end
  helper_method :forem_user


  def forem_user
    current_educator
  end
  helper_method :forem_user

  protect_from_forgery
end
