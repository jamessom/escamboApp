require 'test_helper'

class Site::HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get path" do
    get site_home_path
    assert_response :success
  end

end
