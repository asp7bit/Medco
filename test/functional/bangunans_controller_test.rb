require 'test_helper'

class BangunansControllerTest < ActionController::TestCase
  setup do
    @bangunan = bangunans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bangunans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bangunan" do
    assert_difference('Bangunan.count') do
      post :create, bangunan: { keterangan: @bangunan.keterangan, kode: @bangunan.kode }
    end

    assert_redirected_to bangunan_path(assigns(:bangunan))
  end

  test "should show bangunan" do
    get :show, id: @bangunan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bangunan
    assert_response :success
  end

  test "should update bangunan" do
    put :update, id: @bangunan, bangunan: { keterangan: @bangunan.keterangan, kode: @bangunan.kode }
    assert_redirected_to bangunan_path(assigns(:bangunan))
  end

  test "should destroy bangunan" do
    assert_difference('Bangunan.count', -1) do
      delete :destroy, id: @bangunan
    end

    assert_redirected_to bangunans_path
  end
end
