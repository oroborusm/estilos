require 'test_helper'

class FotitosControllerTest < ActionController::TestCase
  setup do
    @fotito = fotitos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fotitos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fotito" do
    assert_difference('Fotito.count') do
      post :create, fotito: { imagen: @fotito.imagen, nombre: @fotito.nombre }
    end

    assert_redirected_to fotito_path(assigns(:fotito))
  end

  test "should show fotito" do
    get :show, id: @fotito
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fotito
    assert_response :success
  end

  test "should update fotito" do
    patch :update, id: @fotito, fotito: { imagen: @fotito.imagen, nombre: @fotito.nombre }
    assert_redirected_to fotito_path(assigns(:fotito))
  end

  test "should destroy fotito" do
    assert_difference('Fotito.count', -1) do
      delete :destroy, id: @fotito
    end

    assert_redirected_to fotitos_path
  end
end
