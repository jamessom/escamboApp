require 'test_helper'

class Backoffice::AdminsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get backoffice_admins_index_url
    assert_response :success
  end

end
