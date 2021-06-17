class Admin::SendsController < Admin::BaseController
  before_action :set_admin_send, only: %i[ show edit update destroy ]

  def index
    @admin_sends = Admin::Send.all
  end

  def show
  end

  def new
    @admin_send = Admin::Send.new
  end

  def edit
  end

  def create
    @admin_send = Admin::Send.new(admin_send_params)

    respond_to do |format|
      if @admin_send.save
        format.html { redirect_to @admin_send, notice: "Send was successfully created." }
        format.json { render :show, status: :created, location: @admin_send }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @admin_send.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @admin_send.update(admin_send_params)
        format.html { redirect_to @admin_send, notice: "Send was successfully updated." }
        format.json { render :show, status: :ok, location: @admin_send }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @admin_send.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @admin_send.destroy
    respond_to do |format|
      format.html { redirect_to admin_sends_url, notice: "Send was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_admin_send
      @admin_send = Admin::Send.find(params[:id])
    end

    def admin_send_params
      params.require(:admin_send).permit(:recipient_email, :amount)
    end
end
