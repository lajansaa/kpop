class User::RegistrationsController < DeviseTokenAuth::RegistrationsController
  before_action :configure_permitted_parameters, only: [:create]

  def create
    super
  end

  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit :sign_up, keys: [:name]
  end
end