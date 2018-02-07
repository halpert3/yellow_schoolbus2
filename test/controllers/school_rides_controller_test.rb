require 'test_helper'

class SchoolRidesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get school_rides_new_url
    assert_response :success
  end

  test "should get create" do
    get school_rides_create_url
    assert_response :success
  end

end
