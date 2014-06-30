require 'test_helper'

class ApiConnectControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
