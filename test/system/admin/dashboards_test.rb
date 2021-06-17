require "application_system_test_case"

class Admin::DashboardsTest < ApplicationSystemTestCase
  setup do
    @admin_dashboard = admin_dashboards(:one)
  end

  test "visiting the index" do
    visit admin_dashboards_url
    assert_selector "h1", text: "Admin/Dashboards"
  end

  test "creating a Dashboard" do
    visit admin_dashboards_url
    click_on "New Admin/Dashboard"

    fill_in "Detail", with: @admin_dashboard.detail
    click_on "Create Dashboard"

    assert_text "Dashboard was successfully created"
    click_on "Back"
  end

  test "updating a Dashboard" do
    visit admin_dashboards_url
    click_on "Edit", match: :first

    fill_in "Detail", with: @admin_dashboard.detail
    click_on "Update Dashboard"

    assert_text "Dashboard was successfully updated"
    click_on "Back"
  end

  test "destroying a Dashboard" do
    visit admin_dashboards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dashboard was successfully destroyed"
  end
end
