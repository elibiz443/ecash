class SendsController < ApplicationController
  # before_action :set_send, only: %i[ show edit update destroy ]

  def index
    @sends = Send.all
  end

  # def show
  # end

  def new
    @send = Send.new
  end

  def create
    @send = Send.new(send_params)

    respond_to do |format|
      if @send.save
        format.html do
          flash[:success] = 'Money Sent!'
          redirect_to '/success'
        end
      else
        format.html { flash[:failure!] = 'Money Not Sent! Verify Details & Send Again!' }
        format.html { render 'new' }
      end
    end
  end

  private
    def set_send
      @send = Send.find(params[:id])
    end

    def send_params
      params.require(:send).permit(:recipient_email, :amount)
    end
end
