class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?
	
	protected


    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password, :password_confirmation, :name, :city, :state, :bio) }
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password, :password_confirmation, :name, :city, :state, :bio, :current_password, :interest_list, :category_list) }
    end
    
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end