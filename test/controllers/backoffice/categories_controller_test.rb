require 'test_helper'

class Backoffice::CategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backoffice_categories_index_url
    assert_response :success
  end
end
