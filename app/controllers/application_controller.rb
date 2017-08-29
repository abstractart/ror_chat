class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    user_data = { keys: [:first_name, :last_name] }
    devise_parameter_sanitizer.permit(:sign_up, user_data)
    devise_parameter_sanitizer.permit(:account_update, user_data)
  end
end
