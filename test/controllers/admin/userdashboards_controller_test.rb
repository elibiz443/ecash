require "test_helper"

class Admin::UserdashboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_userdashboard = admin_userdashboards(:one)
  end

  test "should get index" do
    get admin_userdashboards_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_userdashboard_url
    assert_response :success
  end

  test "should create admin_userdashboard" do
    assert_difference('Admin::Userdashboard.count') do
      post admin_userdashboards_url, params: { admin_userdashboard: { detail: @admin_userdashboard.detail } }
    end

    assert_redirected_to admin_userdashboard_url(Admin::Userdashboard.last)
  end

  test "should show admin_userdashboard" do
    get admin_userdashboard_url(@admin_userdashboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_userdashboard_url(@admin_userdashboard)
    assert_response :success
  end

  test "should update admin_userdashboard" do
    patch admin_userdashboard_url(@admin_userdashboard), params: { admin_userdashboard: { detail: @admin_userdashboard.detail } }
    assert_redirected_to admin_userdashboard_url(@admin_userdashboard)
  end

  test "should destroy admin_userdashboard" do
    assert_difference('Admin::Userdashboard.count', -1) do
      delete admin_userdashboard_url(@admin_userdashboard)
    end

    assert_redirected_to admin_userdashboards_url
  end
end
