class Admin::UserdashboardsController < Admin::BaseController
  before_action :set_admin_userdashboard, only: %i[ show edit update destroy ]

  def index
    @admin_userdashboards = Admin::Userdashboard.all
  end

  def show
  end

  def new
    @admin_userdashboard = Admin::Userdashboard.new
  end

  def edit
  end

  def create
    @admin_userdashboard = Admin::Userdashboard.new(admin_userdashboard_params)

    respond_to do |format|
      if @admin_userdashboard.save
        format.html { redirect_to @admin_userdashboard, notice: "Userdashboard was successfully created." }
        format.json { render :show, status: :created, location: @admin_userdashboard }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_userdashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @admin_userdashboard.update(admin_userdashboard_params)
        format.html { redirect_to @admin_userdashboard, notice: "Userdashboard was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_userdashboard }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_userdashboard.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @admin_userdashboard.destroy
    respond_to do |format|
      format.html { redirect_to admin_userdashboards_url, notice: "Userdashboard was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_admin_userdashboard
      @admin_userdashboard = Admin::Userdashboard.find(params[:id])
    end

    def admin_userdashboard_params
      params.require(:admin_userdashboard).permit(:detail, :user_id)
    end
end
