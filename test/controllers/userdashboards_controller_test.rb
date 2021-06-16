require "test_helper"

class UserdashboardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @userdashboard = userdashboards(:one)
  end

  test "should get index" do
    get userdashboards_url
    assert_response :success
  end

  test "should get new" do
    get new_userdashboard_url
    assert_response :success
  end

  test "should create userdashboard" do
    assert_difference('Userdashboard.count') do
      post userdashboards_url, params: { userdashboard: { detail: @userdashboard.detail } }
    end

    assert_redirected_to userdashboard_url(Userdashboard.last)
  end

  test "should show userdashboard" do
    get userdashboard_url(@userdashboard)
    assert_response :success
  end

  test "should get edit" do
    get edit_userdashboard_url(@userdashboard)
    assert_response :success
  end

  test "should update userdashboard" do
    patch userdashboard_url(@userdashboard), params: { userdashboard: { detail: @userdashboard.detail } }
    assert_redirected_to userdashboard_url(@userdashboard)
  end

  test "should destroy userdashboard" do
    assert_difference('Userdashboard.count', -1) do
      delete userdashboard_url(@userdashboard)
    end

    assert_redirected_to userdashboards_url
  end
end
