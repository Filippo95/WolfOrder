require 'test_helper'

class CcbControllerTest < ActionController::TestCase
  test "should get cassa" do
    get :cassa
    assert_response :success
  end

  test "should get cucina" do
    get :cucina
    assert_response :success
  end

  test "should get bar" do
    get :bar
    assert_response :success
  end

end
