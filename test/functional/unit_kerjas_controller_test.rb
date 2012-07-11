require 'test_helper'

class UnitKerjasControllerTest < ActionController::TestCase
  setup do
    @unit_kerja = unit_kerjas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unit_kerjas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unit_kerja" do
    assert_difference('UnitKerja.count') do
      post :create, unit_kerja: { keterangan: @unit_kerja.keterangan, kode: @unit_kerja.kode }
    end

    assert_redirected_to unit_kerja_path(assigns(:unit_kerja))
  end

  test "should show unit_kerja" do
    get :show, id: @unit_kerja
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unit_kerja
    assert_response :success
  end

  test "should update unit_kerja" do
    put :update, id: @unit_kerja, unit_kerja: { keterangan: @unit_kerja.keterangan, kode: @unit_kerja.kode }
    assert_redirected_to unit_kerja_path(assigns(:unit_kerja))
  end

  test "should destroy unit_kerja" do
    assert_difference('UnitKerja.count', -1) do
      delete :destroy, id: @unit_kerja
    end

    assert_redirected_to unit_kerjas_path
  end
end
