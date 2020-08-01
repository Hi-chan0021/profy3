class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :cofigure_permitted_parameters, if: :devise_controller?

  def cofigure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in, keys:[:group_key])
    devise_parameter_sanitizer.permit(:sign_up, keys:[:group_key])
    devise_parameter_sanitizer.permit(:account_pudate, keys:[:group_key])
  end

end
