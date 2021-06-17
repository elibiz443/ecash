require "application_system_test_case"

class Admin::UserdashboardsTest < ApplicationSystemTestCase
  setup do
    @admin_userdashboard = admin_userdashboards(:one)
  end

  test "visiting the index" do
    visit admin_userdashboards_url
    assert_selector "h1", text: "Admin/Userdashboards"
  end

  test "creating a Userdashboard" do
    visit admin_userdashboards_url
    click_on "New Admin/Userdashboard"

    fill_in "Detail", with: @admin_userdashboard.detail
    click_on "Create Userdashboard"

    assert_text "Userdashboard was successfully created"
    click_on "Back"
  end

  test "updating a Userdashboard" do
    visit admin_userdashboards_url
    click_on "Edit", match: :first

    fill_in "Detail", with: @admin_userdashboard.detail
    click_on "Update Userdashboard"

    assert_text "Userdashboard was successfully updated"
    click_on "Back"
  end

  test "destroying a Userdashboard" do
    visit admin_userdashboards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Userdashboard was successfully destroyed"
  end
end
