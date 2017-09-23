require 'test_helper'

class Backoffice::DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get path" do
    get backoffice_dashboard_path
    assert_response :success
  end

end
