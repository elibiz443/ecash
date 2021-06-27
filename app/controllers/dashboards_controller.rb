class DashboardsController < ApplicationController
  def index
    @dashboards = @user.dashboards.all if @user

    @pagy, @dashboards = pagy(Dashboard.all.order('created_at ASC'), items: 4)

    @homes = Home.all
    @users = User.all
  end
end
