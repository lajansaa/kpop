class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

def create
  @user = User.create( user_params )
end

def after_sign_in_path_for(resource)
  sign_in_url = new_user_session_url
  if request.referer == sign_in_url
    super
  else
    stored_location_for(resource) || request.referer || root_path
  end
end

def after_sign_out_path_for(resource_or_scope)
  request.referrer
end

protected
  	def configure_permitted_parameters
	  	devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :username, :gender, :birthday, :email, :password, :avatar])
	  	devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])
	  	devise_parameter_sanitizer.permit(:account_update, keys: [:name, :username, :gender, :birthday, :email, :password, :current_password, :remember_me, :avatar])
	end
	def user_params
  		params.require(:user).permit(:avatar)
	end
end
