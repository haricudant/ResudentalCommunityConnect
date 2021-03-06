require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
    include Devise::Test::IntegrationHelpers

  setup do
    @event = events(:one)
  end

  test "should get index" do
    sign_in users(:one)
    get events_url
    assert_response :success
  end

  test "should get new" do
    sign_in users(:one)
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    sign_in users(:one)
    assert_difference('Event.count') do
      post events_url, params: { event: { cost: @event.cost, name: @event.name } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    sign_in users(:one)
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    sign_in users(:one)
    patch event_url(@event), params: { event: { cost: @event.cost, name: @event.name } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    sign_in users(:one)
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
