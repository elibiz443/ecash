require "application_system_test_case"

class Admin::SendsTest < ApplicationSystemTestCase
  setup do
    @admin_send = admin_sends(:one)
  end

  test "visiting the index" do
    visit admin_sends_url
    assert_selector "h1", text: "Admin/Sends"
  end

  test "creating a Send" do
    visit admin_sends_url
    click_on "New Admin/Send"

    fill_in "Amount", with: @admin_send.amount
    fill_in "Recipient email", with: @admin_send.recipient_email
    click_on "Create Send"

    assert_text "Send was successfully created"
    click_on "Back"
  end

  test "updating a Send" do
    visit admin_sends_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @admin_send.amount
    fill_in "Recipient email", with: @admin_send.recipient_email
    click_on "Update Send"

    assert_text "Send was successfully updated"
    click_on "Back"
  end

  test "destroying a Send" do
    visit admin_sends_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Send was successfully destroyed"
  end
end
