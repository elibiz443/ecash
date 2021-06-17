require "test_helper"

class Admin::DashboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_dashboard = admin_dashboards(:one)
  end

  test "should get index" do
    get admin_dashboards_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_dashboard_url
    assert_response :success
  end

  test "should create admin_dashboard" do
    assert_difference('Admin::Dashboard.count') do
      post admin_dashboards_url, params: { admin_dashboard: { detail: @admin_dashboard.detail } }
    end

    assert_redirected_to admin_dashboard_url(Admin::Dashboard.last)
  end

  test "should show admin_dashboard" do
    get admin_dashboard_url(@admin_dashboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_dashboard_url(@admin_dashboard)
    assert_response :success
  end

  test "should update admin_dashboard" do
    patch admin_dashboard_url(@admin_dashboard), params: { admin_dashboard: { detail: @admin_dashboard.detail } }
    assert_redirected_to admin_dashboard_url(@admin_dashboard)
  end

  test "should destroy admin_dashboard" do
    assert_difference('Admin::Dashboard.count', -1) do
      delete admin_dashboard_url(@admin_dashboard)
    end

    assert_redirected_to admin_dashboards_url
  end
end
