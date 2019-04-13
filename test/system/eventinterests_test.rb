require "application_system_test_case"

class EventinterestsTest < ApplicationSystemTestCase
  setup do
    @eventinterest = eventinterests(:one)
  end

  test "visiting the index" do
    visit eventinterests_url
    assert_selector "h1", text: "Eventinterests"
  end

  test "creating a Eventinterest" do
    visit eventinterests_url
    click_on "New Eventinterest"

    fill_in "Events", with: @eventinterest.events_id
    fill_in "Isinterest", with: @eventinterest.isinterest
    fill_in "User", with: @eventinterest.user_id
    click_on "Create Eventinterest"

    assert_text "Eventinterest was successfully created"
    click_on "Back"
  end

  test "updating a Eventinterest" do
    visit eventinterests_url
    click_on "Edit", match: :first

    fill_in "Events", with: @eventinterest.events_id
    fill_in "Isinterest", with: @eventinterest.isinterest
    fill_in "User", with: @eventinterest.user_id
    click_on "Update Eventinterest"

    assert_text "Eventinterest was successfully updated"
    click_on "Back"
  end

  test "destroying a Eventinterest" do
    visit eventinterests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Eventinterest was successfully destroyed"
  end
end
