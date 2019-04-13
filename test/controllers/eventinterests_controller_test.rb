require 'test_helper'

class EventinterestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @eventinterest = eventinterests(:one)
  end

  test "should get index" do
    get eventinterests_url
    assert_response :success
  end

  test "should get new" do
    get new_eventinterest_url
    assert_response :success
  end

  test "should create eventinterest" do
    assert_difference('Eventinterest.count') do
      post eventinterests_url, params: { eventinterest: { events_id: @eventinterest.events_id, isinterest: @eventinterest.isinterest, user_id: @eventinterest.user_id } }
    end

    assert_redirected_to eventinterest_url(Eventinterest.last)
  end

  test "should show eventinterest" do
    get eventinterest_url(@eventinterest)
    assert_response :success
  end

  test "should get edit" do
    get edit_eventinterest_url(@eventinterest)
    assert_response :success
  end

  test "should update eventinterest" do
    patch eventinterest_url(@eventinterest), params: { eventinterest: { events_id: @eventinterest.events_id, isinterest: @eventinterest.isinterest, user_id: @eventinterest.user_id } }
    assert_redirected_to eventinterest_url(@eventinterest)
  end

  test "should destroy eventinterest" do
    assert_difference('Eventinterest.count', -1) do
      delete eventinterest_url(@eventinterest)
    end

    assert_redirected_to eventinterests_url
  end
end
