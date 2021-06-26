class Admin::HomesController < Admin::BaseController
  before_action :set_admin_home, only: %i[ show edit update destroy ]

  def index
    @homes = Home.all
    @pagy, @homes = pagy(Home.all.order('created_at ASC'), items: 4)
  end

  def show
  end

  def new
    @home = Home.new
  end

  def edit
    @home = Home.find(params[:id])
  end

  def create
    @home = Home.new(admin_home_params)

    if @home.save
      session[:user_id] = @home.id
      flash[:success] =  'You Have successfully Added Detail!'
      redirect_to '/admin/homes'
    else
      render :new
    end
  end

  def update
    @home = Home.find(params[:id])
    @home.update(params.require(:home).permit(:detail))
    flash[:success] =  'Detail successfully Updated!'
    redirect_to '/admin/homes'
  end

  def destroy
    @home = Home.find(params[:id])
    @home.destroy
    flash[:success] =  'Detail successfully Deleted!'
    redirect_to admin_homes_path
  end

  private
    def set_admin_home
      @home = Home.find(params[:id])
    end

    def admin_home_params
      params.require(:home).permit(:detail)
    end
end
