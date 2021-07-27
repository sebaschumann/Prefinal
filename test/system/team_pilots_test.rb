require "application_system_test_case"

class TeamPilotsTest < ApplicationSystemTestCase
  setup do
    @team_pilot = team_pilots(:one)
  end

  test "visiting the index" do
    visit team_pilots_url
    assert_selector "h1", text: "Team Pilots"
  end

  test "creating a Team pilot" do
    visit team_pilots_url
    click_on "New Team Pilot"

    fill_in "Championship", with: @team_pilot.championship_id
    fill_in "Pilot", with: @team_pilot.pilot_id
    fill_in "Team", with: @team_pilot.team_id
    click_on "Create Team pilot"

    assert_text "Team pilot was successfully created"
    click_on "Back"
  end

  test "updating a Team pilot" do
    visit team_pilots_url
    click_on "Edit", match: :first

    fill_in "Championship", with: @team_pilot.championship_id
    fill_in "Pilot", with: @team_pilot.pilot_id
    fill_in "Team", with: @team_pilot.team_id
    click_on "Update Team pilot"

    assert_text "Team pilot was successfully updated"
    click_on "Back"
  end

  test "destroying a Team pilot" do
    visit team_pilots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Team pilot was successfully destroyed"
  end
end
