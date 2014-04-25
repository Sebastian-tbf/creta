require 'test_helper'

class RolsControllerTest < ActionController::TestCase
  setup do
    @rol = rols(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rols)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rol" do
    assert_difference('Rol.count') do
      post :create, rol: { admin: @rol.admin, module_1: @rol.module_1, module_2: @rol.module_2, module_3: @rol.module_3, module_4: @rol.module_4, module_5: @rol.module_5, rol_name: @rol.rol_name }
    end

    assert_redirected_to rol_path(assigns(:rol))
  end

  test "should show rol" do
    get :show, id: @rol
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rol
    assert_response :success
  end

  test "should update rol" do
    patch :update, id: @rol, rol: { admin: @rol.admin, module_1: @rol.module_1, module_2: @rol.module_2, module_3: @rol.module_3, module_4: @rol.module_4, module_5: @rol.module_5, rol_name: @rol.rol_name }
    assert_redirected_to rol_path(assigns(:rol))
  end

  test "should destroy rol" do
    assert_difference('Rol.count', -1) do
      delete :destroy, id: @rol
    end

    assert_redirected_to rols_path
  end
end
