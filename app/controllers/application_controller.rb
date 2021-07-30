# frozen_string_literal: true
class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def require_admin_authorization
    redirect_to root_path unless current_user.admin?
  end

  def require_user
    redirect_to root_path unless current_user
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :password, :current_password])
  end
end
