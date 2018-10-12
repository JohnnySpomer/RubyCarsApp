require 'test_helper'

class VehicleTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get vehicle_types_show_url
    assert_response :success
  end

end
