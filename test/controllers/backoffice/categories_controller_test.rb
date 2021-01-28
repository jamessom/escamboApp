require 'test_helper'

class Backoffice::CategoriesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    get '/admin/login'
    sign_in admins(:one)
    post admin_session_path
  end

  test "should get index" do
    get backoffice_categories_path
    assert_response :success
  end
end
