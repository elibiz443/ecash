class Admin::UsersController < Admin::BaseController
  skip_before_action :require_valid_admin_user!
  before_action :reset_session

  def new
    @admin_user = Admin::User.new
  end

  def create
    @admin_user = Admin::User.new(admin_user_params)

    if @admin_user.save
      session[:user_id] = @admin_user.id
      flash[:success] =  'You have successfully created admin account!'
      redirect_to '/admin/dashboards'
    else
      render :new
    end
  end

  def update
    respond_to do |format|
      if @admin_user.update(admin_user_params)
        format.html { redirect_to @admin_user, notice: "User was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_user.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @admin_user.destroy
    respond_to do |format|
      format.html { redirect_to admin_users_url, notice: "User was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_admin_user
      @admin_user = Admin::User.find(params[:id])
    end

    def admin_user_params
      params.require(:admin_user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
    end
end
