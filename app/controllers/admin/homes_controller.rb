class Admin::HomesController < Admin::BaseController
  before_action :set_admin_home, only: %i[ show edit update destroy ]

  def index
    @admin_homes = Admin::Home.all
  end

  def show
  end

  def new
    @admin_home = Admin::Home.new
  end

  def edit
  end

  def create
    @admin_home = Admin::Home.new(admin_home_params)

    respond_to do |format|
      if @admin_home.save
        format.html { redirect_to @admin_home, notice: "Home was successfully created." }
        format.json { render :show, status: :created, location: @admin_home }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_home.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @admin_home.update(admin_home_params)
        format.html { redirect_to @admin_home, notice: "Home was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_home }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_home.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @admin_home.destroy
    respond_to do |format|
      format.html { redirect_to admin_homes_url, notice: "Home was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_admin_home
      @admin_home = Admin::Home.find(params[:id])
    end

    def admin_home_params
      params.require(:admin_home).permit(:detail)
    end
end
