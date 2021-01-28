require 'test_helper'

class Backoffice::DashboardControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    get '/admin/login'
    sign_in admins(:one)
    post admin_session_path
  end

  test "should get path" do
    get backoffice_dashboard_path
    assert_response :success
  end
end
