require 'test_helper'

class CurrentprovidersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @currentprovider = currentproviders(:one)
  end

  test "should get index" do
    get currentproviders_url
    assert_response :success
  end

  test "should get new" do
    get new_currentprovider_url
    assert_response :success
  end

  test "should create currentprovider" do
    assert_difference('Currentprovider.count') do
      post currentproviders_url, params: { currentprovider: { cost: @currentprovider.cost, providername: @currentprovider.providername, pslvcharge: @currentprovider.pslvcharge, standingcharge: @currentprovider.standingcharge } }
    end

    assert_redirected_to currentprovider_url(Currentprovider.last)
  end

  test "should show currentprovider" do
    get currentprovider_url(@currentprovider)
    assert_response :success
  end

  test "should get edit" do
    get edit_currentprovider_url(@currentprovider)
    assert_response :success
  end

  test "should update currentprovider" do
    patch currentprovider_url(@currentprovider), params: { currentprovider: { cost: @currentprovider.cost, providername: @currentprovider.providername, pslvcharge: @currentprovider.pslvcharge, standingcharge: @currentprovider.standingcharge } }
    assert_redirected_to currentprovider_url(@currentprovider)
  end

  test "should destroy currentprovider" do
    assert_difference('Currentprovider.count', -1) do
      delete currentprovider_url(@currentprovider)
    end

    assert_redirected_to currentproviders_url
  end
end
