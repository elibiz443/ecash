class DashboardsController < ApplicationController
  # before_action :set_dashboard, only: %i[ show edit update destroy ]

  def index
    @dashboards = @user.dashboards.all if @user

    @pagy, @dashboards = pagy(Dashboard.all.order('created_at ASC'), items: 4)

    @homes = Home.all
    @users = User.all
  end

  # def show
  # end

  # def new
  #   @dashboard = Dashboard.new
  # end

  # def edit
  # end

  # def create
  #   @dashboard = Dashboard.new(dashboard_params)

  #   respond_to do |format|
  #     if @dashboard.save
  #       format.html { redirect_to @dashboard, notice: "Dashboard was successfully created." }
  #       format.json { render :show, status: :created, location: @dashboard }
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #       format.json { render json: @dashboard.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # def update
  #   respond_to do |format|
  #     if @dashboard.update(dashboard_params)
  #       format.html { redirect_to @dashboard, notice: "Dashboard was successfully updated." }
  #       format.json { render :show, status: :ok, location: @dashboard }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @dashboard.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # def destroy
  #   @dashboard.destroy
  #   respond_to do |format|
  #     format.html { redirect_to dashboards_url, notice: "Dashboard was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end

  # private
  #   def set_dashboard
  #     @dashboard = Dashboard.find(params[:id])
  #   end

  #   def dashboard_params
  #     params.require(:dashboard).permit(:detail)
  #   end
end
