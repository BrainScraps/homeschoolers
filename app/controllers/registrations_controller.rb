class RegistrationsController < Devise::RegistrationsController 
  protected


  def after_sign_up_path_for(current_educator)

    educator_edit_path(current_educator)
  end




end