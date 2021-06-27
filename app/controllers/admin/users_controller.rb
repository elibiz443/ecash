class Admin::UsersController < Admin::BaseController
  before_action :set_admin_user, only: %i[ show edit update destroy ]

  def index
    @pagy, @admin_user = pagy(Admin::User.all.order('created_at ASC'), items: 3)
  end

  def new
    @admin_user = Admin::User.new
  end

  def create
    @admin_user = Admin::User.new(admin_user_params)

    if @admin_user.save
      session[:admin_user_id] = @admin_user.id
      flash[:success] =  'You have successfully created new user'
      redirect_to '/admin/users'
    else
      render :new
    end
  end

  def update
    @admin_user = Admin::User.find(params[:id])
    @admin_user.update(params.require(:admin_user).permit(:first_name, :last_name, :phone_no, :email, :balance, :admin))
    flash[:success] =  'User Successfully Updated!'
    redirect_to '/admin/users'
  end

  def destroy
    @admin_user = Admin::User.find(params[:id])
    if (admin_current_user == @admin_user) && (@admin_user.admin == true)
      flash[:error] = "You can't delete admin or own account!"
      redirect_to '/admin/users'
    else
      @admin_user.destroy
      flash[:success] =  'User Successfully Deleted!'
      redirect_to '/admin/users'
    end
  end

  private
    def set_admin_user
      @admin_user = Admin::User.find(params[:id])
    end

    def admin_user_params
      params.require(:admin_user).permit(:first_name, :last_name, :phone_no, :email, :balance, :admin, :password, :password_confirmation)
    end
end
