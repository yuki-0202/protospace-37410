class ApplicationController < ActionController::Base
  before_action :configure_permmited_parameters, if: :devise_controller?

  private
  def configure_permmited_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:name, :profile, :occupation, :position])
  end
end
