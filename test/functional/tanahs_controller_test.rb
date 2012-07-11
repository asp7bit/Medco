require 'test_helper'

class TanahsControllerTest < ActionController::TestCase
  setup do
    @tanah = tanahs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tanahs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tanah" do
    assert_difference('Tanah.count') do
      post :create, tanah: { keterangan: @tanah.keterangan, kode: @tanah.kode }
    end

    assert_redirected_to tanah_path(assigns(:tanah))
  end

  test "should show tanah" do
    get :show, id: @tanah
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tanah
    assert_response :success
  end

  test "should update tanah" do
    put :update, id: @tanah, tanah: { keterangan: @tanah.keterangan, kode: @tanah.kode }
    assert_redirected_to tanah_path(assigns(:tanah))
  end

  test "should destroy tanah" do
    assert_difference('Tanah.count', -1) do
      delete :destroy, id: @tanah
    end

    assert_redirected_to tanahs_path
  end
end
