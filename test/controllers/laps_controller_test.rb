require "test_helper"

class LapsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lap = laps(:one)
  end

  test "should get index" do
    get laps_url
    assert_response :success
  end

  test "should get new" do
    get new_lap_url
    assert_response :success
  end

  test "should create lap" do
    assert_difference('Lap.count') do
      post laps_url, params: { lap: { number: @lap.number, pilot_id: @lap.pilot_id, position: @lap.position, race_id: @lap.race_id, time: @lap.time } }
    end

    assert_redirected_to lap_url(Lap.last)
  end

  test "should show lap" do
    get lap_url(@lap)
    assert_response :success
  end

  test "should get edit" do
    get edit_lap_url(@lap)
    assert_response :success
  end

  test "should update lap" do
    patch lap_url(@lap), params: { lap: { number: @lap.number, pilot_id: @lap.pilot_id, position: @lap.position, race_id: @lap.race_id, time: @lap.time } }
    assert_redirected_to lap_url(@lap)
  end

  test "should destroy lap" do
    assert_difference('Lap.count', -1) do
      delete lap_url(@lap)
    end

    assert_redirected_to laps_url
  end
end
