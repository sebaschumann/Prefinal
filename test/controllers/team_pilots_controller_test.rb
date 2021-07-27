require "test_helper"

class TeamPilotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_pilot = team_pilots(:one)
  end

  test "should get index" do
    get team_pilots_url
    assert_response :success
  end

  test "should get new" do
    get new_team_pilot_url
    assert_response :success
  end

  test "should create team_pilot" do
    assert_difference('TeamPilot.count') do
      post team_pilots_url, params: { team_pilot: { championship_id: @team_pilot.championship_id, pilot_id: @team_pilot.pilot_id, team_id: @team_pilot.team_id } }
    end

    assert_redirected_to team_pilot_url(TeamPilot.last)
  end

  test "should show team_pilot" do
    get team_pilot_url(@team_pilot)
    assert_response :success
  end

  test "should get edit" do
    get edit_team_pilot_url(@team_pilot)
    assert_response :success
  end

  test "should update team_pilot" do
    patch team_pilot_url(@team_pilot), params: { team_pilot: { championship_id: @team_pilot.championship_id, pilot_id: @team_pilot.pilot_id, team_id: @team_pilot.team_id } }
    assert_redirected_to team_pilot_url(@team_pilot)
  end

  test "should destroy team_pilot" do
    assert_difference('TeamPilot.count', -1) do
      delete team_pilot_url(@team_pilot)
    end

    assert_redirected_to team_pilots_url
  end
end
