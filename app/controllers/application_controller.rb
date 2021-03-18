class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  # CSRF保護を無効
  protect_from_forgery with: :null_session
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :gender])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :self_introduction, :profile_image])
  
  end
end
