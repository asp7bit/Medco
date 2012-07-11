require 'test_helper'

class DivisisControllerTest < ActionController::TestCase
  setup do
    @divisi = divisis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:divisis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create divisi" do
    assert_difference('Divisi.count') do
      post :create, divisi: { keterangan: @divisi.keterangan, kode: @divisi.kode }
    end

    assert_redirected_to divisi_path(assigns(:divisi))
  end

  test "should show divisi" do
    get :show, id: @divisi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @divisi
    assert_response :success
  end

  test "should update divisi" do
    put :update, id: @divisi, divisi: { keterangan: @divisi.keterangan, kode: @divisi.kode }
    assert_redirected_to divisi_path(assigns(:divisi))
  end

  test "should destroy divisi" do
    assert_difference('Divisi.count', -1) do
      delete :destroy, id: @divisi
    end

    assert_redirected_to divisis_path
  end
end
