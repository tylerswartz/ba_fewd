require 'test_helper'

class AppHomesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
