class HomesController < ApplicationController
  skip_before_action :require_valid_user!
  before_action :reset_session

  def index
    @homes = Home.all
  end

  # def new
  #   @homes = Home.new
  # end

  # def create
  #   @home = Home.new(home_params)

  #   respond_to do |format|
  #     if @home.save
  #       format.html { redirect_to @home, notice: "Home was successfully created." }
  #       format.json { render :show, status: :created, location: @home }
  #     else
  #       format.html { render :new, status: :unprocessable_entity }
  #       format.json { render json: @home.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # def update
  #   respond_to do |format|
  #     if @home.update(home_params)
  #       format.html { redirect_to @home, notice: "Home was successfully updated." }
  #       format.json { render :show, status: :ok, location: @home }
  #     else
  #       format.html { render :edit, status: :unprocessable_entity }
  #       format.json { render json: @home.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # def destroy
  #   @home.destroy
  #   respond_to do |format|
  #     format.html { redirect_to '/home', notice: "Home was successfully destroyed." }
  #     format.json { head :no_content }
  #   end
  # end

  private
    def set_home
      @home = Home.find(params[:id])
    end

    def home_params
      params.require(:home).permit(:detail)
    end
end
