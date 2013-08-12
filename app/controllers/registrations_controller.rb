class RegistrationsController < Devise::RegistrationsController 
  protected

  def after_sign_up_path_for(resource)
    redirect_to 'http://google.com'
  end


  # def create 
  #   @educator = Educator.new(params[:educator])

  #   binding.pry

  # end

end