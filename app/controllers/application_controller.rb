class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception

rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  before_action :update_allowed_parameters, if: :devise_controller?

  protected

  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :surname, :email, :password)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :surname, :email, :password)}
  end

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(pages_error_path)
  end
end
