class UserdashboardsController < ApplicationController
  # before_action :set_userdashboard, only: %i[ show edit update destroy ]

  def index
    @userdashboards = @user.userdashboards.all if @user
  end

  # def new
  #   @userdashboard = Userdashboard.new
  # end

  # def create
  #   @userdashboard = Userdashboard.new(userdashboard_params)

  #   respond_to do |format|
  #     if @userdashboard.save
  #       format.html { redirect_to @userdashboard, notice: "Userdashboard was successfully created." }
  #       format.json { render :show, status: :created, location: @userdashboard }
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #       format.json { render json: @userdashboard.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # def update
  #   respond_to do |format|
  #     if @userdashboard.update(userdashboard_params)
  #       format.html { redirect_to @userdashboard, notice: "Userdashboard was successfully updated." }
  #       format.json { render :show, status: :ok, location: @userdashboard }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @userdashboard.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # def destroy
  #   @userdashboard.destroy
  #   respond_to do |format|
  #     format.html { redirect_to userdashboards_url, notice: "Userdashboard was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end

  # private
  #   def set_userdashboard
  #     @userdashboard = Userdashboard.find(params[:id])
  #   end

  #   def userdashboard_params
  #     params.require(:userdashboard).permit(:detail)
  #   end
end
