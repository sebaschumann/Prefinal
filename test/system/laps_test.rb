require "application_system_test_case"

class LapsTest < ApplicationSystemTestCase
  setup do
    @lap = laps(:one)
  end

  test "visiting the index" do
    visit laps_url
    assert_selector "h1", text: "Laps"
  end

  test "creating a Lap" do
    visit laps_url
    click_on "New Lap"

    fill_in "Number", with: @lap.number
    fill_in "Pilot", with: @lap.pilot_id
    fill_in "Position", with: @lap.position
    fill_in "Race", with: @lap.race_id
    fill_in "Time", with: @lap.time
    click_on "Create Lap"

    assert_text "Lap was successfully created"
    click_on "Back"
  end

  test "updating a Lap" do
    visit laps_url
    click_on "Edit", match: :first

    fill_in "Number", with: @lap.number
    fill_in "Pilot", with: @lap.pilot_id
    fill_in "Position", with: @lap.position
    fill_in "Race", with: @lap.race_id
    fill_in "Time", with: @lap.time
    click_on "Update Lap"

    assert_text "Lap was successfully updated"
    click_on "Back"
  end

  test "destroying a Lap" do
    visit laps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lap was successfully destroyed"
  end
end
