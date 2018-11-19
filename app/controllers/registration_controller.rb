class RegistrationController < Devise::RegistrationController


  private

  def sign_up_params
    # params.require(:user).permit( :name,
    #                               :email,
    #                               :password,
    #                               :password_confirmation)
    devise_parameter_sanitizer.for(:sign_up) << :name
  end

  def account_update_params
    # params.require(:user).permit( :name,
    #                               :email,
    #                               :password,
    #                               :password_confirmation,
    #                               :current_password)
    devise_parameter_sanitizer.for(:account_update) << :name                              
  end
end
