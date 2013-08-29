class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate_admin_user!
    redirect_to root_path, notice: "You are not an admin." if !current_user.has_role?(:admin)
    authenticate_user!
  end
end
