module Admin::DashboardsHelper
  def admin_current_user
    @admin_user ||= Admin::User.find(admin_session[:admin_user_id])
  end
end
