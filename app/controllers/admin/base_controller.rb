class Admin::BaseController < ActionController::Base
  layout "admin" 

	protect_from_forgery with: :exception
  before_action :require_valid_admin_user!

  def admin_current_user
    if !session[:admin_user_id].blank?
      @admin_user ||= Admin::User.find(session[:admin_user_id])
    end
  end

  def require_valid_admin_user!
    if admin_current_user.nil?
      flash[:error] = 'You must be logged in to access that page!'
      redirect_to admin_login_path
    end
  end
end
