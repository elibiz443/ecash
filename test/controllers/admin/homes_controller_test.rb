require "test_helper"

class Admin::HomesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_home = admin_homes(:one)
  end

  test "should get index" do
    get admin_homes_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_home_url
    assert_response :success
  end

  test "should create admin_home" do
    assert_difference('Admin::Home.count') do
      post admin_homes_url, params: { admin_home: { detail: @admin_home.detail } }
    end

    assert_redirected_to admin_home_url(Admin::Home.last)
  end

  test "should show admin_home" do
    get admin_home_url(@admin_home)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_home_url(@admin_home)
    assert_response :success
  end

  test "should update admin_home" do
    patch admin_home_url(@admin_home), params: { admin_home: { detail: @admin_home.detail } }
    assert_redirected_to admin_home_url(@admin_home)
  end

  test "should destroy admin_home" do
    assert_difference('Admin::Home.count', -1) do
      delete admin_home_url(@admin_home)
    end

    assert_redirected_to admin_homes_url
  end
end
