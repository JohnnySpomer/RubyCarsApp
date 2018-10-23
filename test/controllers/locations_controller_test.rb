require 'test_helper'

class LocationsControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get locations_view_url
    assert_response :success
  end

end
