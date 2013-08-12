class ApplicationController < ActionController::Base

  after_filter :store_location

  def store_location
   # store last url - this is needed for post-login redirect to whatever the user last visited.
      if (request.fullpath != "/educators/sign_in" && \
          request.fullpath != "/educators/sign_up" && \
          !request.xhr?) # don't store ajax calls
        session[:previous_url] = request.fullpath 
      end
  end

  def after_sign_in_path_for(resource)
    session[:previous_url] || root_path
  end
  def after_sign_up_path_for(resource)
    redirect_to 'http://google.com'
  end

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
