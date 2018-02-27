require 'test_helper'

class HomeRideControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get home_ride_new_url
    assert_response :success
  end

  test "should get create" do
    get home_ride_create_url
    assert_response :success
  end

end
