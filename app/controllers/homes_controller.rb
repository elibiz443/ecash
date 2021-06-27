class HomesController < ApplicationController
  skip_before_action :require_valid_user!
  before_action :reset_session

  def index
    @homes = Home.all
  end
end
