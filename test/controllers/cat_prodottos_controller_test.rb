require 'test_helper'

class CatProdottosControllerTest < ActionController::TestCase
  setup do
    @cat_prodotto = cat_prodottos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cat_prodottos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cat_prodotto" do
    assert_difference('CatProdotto.count') do
      post :create, cat_prodotto: { description: @cat_prodotto.description, id_destination: @cat_prodotto.id_destination, id_parent: @cat_prodotto.id_parent, name: @cat_prodotto.name }
    end

    assert_redirected_to cat_prodotto_path(assigns(:cat_prodotto))
  end

  test "should show cat_prodotto" do
    get :show, id: @cat_prodotto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cat_prodotto
    assert_response :success
  end

  test "should update cat_prodotto" do
    patch :update, id: @cat_prodotto, cat_prodotto: { description: @cat_prodotto.description, id_destination: @cat_prodotto.id_destination, id_parent: @cat_prodotto.id_parent, name: @cat_prodotto.name }
    assert_redirected_to cat_prodotto_path(assigns(:cat_prodotto))
  end

  test "should destroy cat_prodotto" do
    assert_difference('CatProdotto.count', -1) do
      delete :destroy, id: @cat_prodotto
    end

    assert_redirected_to cat_prodottos_path
  end
end
