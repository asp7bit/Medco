require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
  setup do
    @bangunan = bangunans(:one)
  end
  
  test "should be get index bangunan" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bangunans)
  end
end
