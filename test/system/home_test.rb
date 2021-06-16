require "application_system_test_case"

class HomeTest < ApplicationSystemTestCase
  setup do
    @home = home(:one)
  end

  test "visiting the index" do
    visit '/home'
    assert_selector "h1", text: "Home"
  end

  test "creating a Home" do
    visit '/home'
    click_on "New Home"

    fill_in "Detail", with: @home.detail
    click_on "Create Home"

    assert_text "Home was successfully created"
    click_on "Back"
  end

  test "updating a Home" do
    visit '/home'
    click_on "Edit", match: :first

    fill_in "Detail", with: @home.detail
    click_on "Update Home"

    assert_text "Home was successfully updated"
    click_on "Back"
  end

  test "destroying a Home" do
    visit '/home'
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Home was successfully destroyed"
  end
end
