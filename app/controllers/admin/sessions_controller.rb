class Admin::SessionsController < Admin::BaseController
  skip_before_action :require_valid_admin_user!, except: [:destroy]

  def new
  end

  def create
    reset_session
    @admin_user = Admin::User.find_by(email: admin_session_params[:email])
    if @admin_user && @admin_user.authenticate(admin_session_params[:password])
      session[:admin_user_id] = @admin_user.id
      flash[:success] = 'Welcome back!'
      redirect_to '/admin'
    else
      flash[:error] = 'Invalid email/password combination'
      redirect_to admin_login_path
    end
  end

  def destroy
    reset_session
    redirect_to admin_login_path
  end

  def admin_session_params
    params.require(:admin_session).permit(:email, :password)
  end
end

