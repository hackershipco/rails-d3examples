require 'test_helper'

class SiteControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get array" do
    get :array
    assert_response :success
  end

  test "should get json" do
    get :json
    assert_response :success
  end

end
