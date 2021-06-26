class Admin::EditusersController < Admin::BaseController
  def index
    @users = User.all
  end

  def edit
  end

  def new
    @users = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      flash[:success] = 'Created User Account!'
      redirect_to '/admin/dashboards'
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      flash[:success] = 'Updated User Account!'
      redirect_to '/admin/dashboards'
    else
      render :new
    end
  end

  def destroy
    @user.destroy
    flash[:success] = 'Deleted User Account!'
    redirect_to '/admin/dashboards'
  end

  private
    def set_user
      @admin_user = Admin::User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :phone_no, :email, :balance, :password, :password_confirmation)
    end
end
