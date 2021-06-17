require "test_helper"

class Admin::SendsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_send = admin_sends(:one)
  end

  test "should get index" do
    get admin_sends_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_send_url
    assert_response :success
  end

  test "should create admin_send" do
    assert_difference('Admin::Send.count') do
      post admin_sends_url, params: { admin_send: { amount: @admin_send.amount, recipient_email: @admin_send.recipient_email } }
    end

    assert_redirected_to admin_send_url(Admin::Send.last)
  end

  test "should show admin_send" do
    get admin_send_url(@admin_send)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_send_url(@admin_send)
    assert_response :success
  end

  test "should update admin_send" do
    patch admin_send_url(@admin_send), params: { admin_send: { amount: @admin_send.amount, recipient_email: @admin_send.recipient_email } }
    assert_redirected_to admin_send_url(@admin_send)
  end

  test "should destroy admin_send" do
    assert_difference('Admin::Send.count', -1) do
      delete admin_send_url(@admin_send)
    end

    assert_redirected_to admin_sends_url
  end
end
