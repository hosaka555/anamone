require 'test_helper'

class MypageControllerTest < ActionController::TestCase
  test "should get page" do
    get :page
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

end
