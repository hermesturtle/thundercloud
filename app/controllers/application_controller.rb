class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to products_path, :alert => exception.message
  end

  def authenticate_admin_user!
    redirect_to root_path, notice: "You are not an admin." if !current_user.try(:has_role?, :admin)
    authenticate_user!
  end
end
