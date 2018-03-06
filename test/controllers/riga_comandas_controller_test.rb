require 'test_helper'

class RigaComandasControllerTest < ActionController::TestCase
  setup do
    @riga_comanda = riga_comandas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:riga_comandas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create riga_comanda" do
    assert_difference('RigaComanda.count') do
      post :create, riga_comanda: { consegnata: @riga_comanda.consegnata, id_comanda: @riga_comanda.id_comanda, id_prodotto: @riga_comanda.id_prodotto, modifiche: @riga_comanda.modifiche, quantit: @riga_comanda.quantit }
    end

    assert_redirected_to riga_comanda_path(assigns(:riga_comanda))
  end

  test "should show riga_comanda" do
    get :show, id: @riga_comanda
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @riga_comanda
    assert_response :success
  end

  test "should update riga_comanda" do
    patch :update, id: @riga_comanda, riga_comanda: { consegnata: @riga_comanda.consegnata, id_comanda: @riga_comanda.id_comanda, id_prodotto: @riga_comanda.id_prodotto, modifiche: @riga_comanda.modifiche, quantit: @riga_comanda.quantit }
    assert_redirected_to riga_comanda_path(assigns(:riga_comanda))
  end

  test "should destroy riga_comanda" do
    assert_difference('RigaComanda.count', -1) do
      delete :destroy, id: @riga_comanda
    end

    assert_redirected_to riga_comandas_path
  end
end
