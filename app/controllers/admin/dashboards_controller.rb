class Admin::DashboardsController < Admin::BaseController
  before_action :set_admin_dashboard, only: %i[ show edit update destroy ]

  def index
    @pagy, @dashboards = pagy(Dashboard.all.order('created_at ASC'), items: 2)
    @pagy, @homes = pagy(Home.all.order('created_at ASC'), items: 2)
    @pagy, @users = pagy(User.all.order('created_at ASC'), items: 2)
  end

  # def show
  # end

  # def new
  #   @admin_dashboard = Admin::Dashboard.new
  # end

  # def edit
  # end

  # def create
  #   @admin_dashboard = Admin::Dashboard.new(admin_dashboard_params)

  #   respond_to do |format|
  #     if @admin_dashboard.save
  #       format.html { redirect_to @admin_dashboard, notice: "Dashboard was successfully created." }
  #       format.json { render :show, status: :created, location: @admin_dashboard }
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #       format.json { render json: @admin_dashboard.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # def update
  #   respond_to do |format|
  #     if @admin_dashboard.update(admin_dashboard_params)
  #       format.html { redirect_to @admin_dashboard, notice: "Dashboard was successfully updated." }
  #       format.json { render :show, status: :ok, location: @admin_dashboard }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @admin_dashboard.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # def destroy
  #   @admin_dashboard.destroy
  #   respond_to do |format|
  #     format.html { redirect_to admin_dashboards_url, notice: "Dashboard was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end

  # private
  #   def set_admin_dashboard
  #     @dashboard = Dashboard.find(params[:id])
  #   end

  #   def admin_dashboard_params
  #     params.require(:dashboard).permit(:detail, :user_id)
  #   end
end
