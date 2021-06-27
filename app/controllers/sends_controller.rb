class SendsController < ApplicationController
  def index
    @sends = Send.all
  end
end
