require 'test_helper'

class KelompoksControllerTest < ActionController::TestCase
  setup do
    @kelompok = kelompoks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:kelompoks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create kelompok" do
    assert_difference('Kelompok.count') do
      post :create, kelompok: { jenis: @kelompok.jenis, keterangan: @kelompok.keterangan, kode: @kelompok.kode, parent_id: @kelompok.parent_id }
    end

    assert_redirected_to kelompok_path(assigns(:kelompok))
  end

  test "should show kelompok" do
    get :show, id: @kelompok
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @kelompok
    assert_response :success
  end

  test "should update kelompok" do
    put :update, id: @kelompok, kelompok: { jenis: @kelompok.jenis, keterangan: @kelompok.keterangan, kode: @kelompok.kode, parent_id: @kelompok.parent_id }
    assert_redirected_to kelompok_path(assigns(:kelompok))
  end

  test "should destroy kelompok" do
    assert_difference('Kelompok.count', -1) do
      delete :destroy, id: @kelompok
    end

    assert_redirected_to kelompoks_path
  end
end
