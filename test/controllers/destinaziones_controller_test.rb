require 'test_helper'

class DestinazionesControllerTest < ActionController::TestCase
  setup do
    @destinazione = destinaziones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:destinaziones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create destinazione" do
    assert_difference('Destinazione.count') do
      post :create, destinazione: { nome: @destinazione.nome }
    end

    assert_redirected_to destinazione_path(assigns(:destinazione))
  end

  test "should show destinazione" do
    get :show, id: @destinazione
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @destinazione
    assert_response :success
  end

  test "should update destinazione" do
    patch :update, id: @destinazione, destinazione: { nome: @destinazione.nome }
    assert_redirected_to destinazione_path(assigns(:destinazione))
  end

  test "should destroy destinazione" do
    assert_difference('Destinazione.count', -1) do
      delete :destroy, id: @destinazione
    end

    assert_redirected_to destinaziones_path
  end
end
