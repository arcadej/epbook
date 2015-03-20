require 'test_helper'

class MagaginesControllerTest < ActionController::TestCase
  setup do
    @magagine = magagines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:magagines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create magagine" do
    assert_difference('Magagine.count') do
      post :create, magagine: { mgcode: @magagine.mgcode, mgname: @magagine.mgname, number: @magagine.number, price: @magagine.price, publisheddate: @magagine.publisheddate, publisher: @magagine.publisher, volume: @magagine.volume }
    end

    assert_redirected_to magagine_path(assigns(:magagine))
  end

  test "should show magagine" do
    get :show, id: @magagine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @magagine
    assert_response :success
  end

  test "should update magagine" do
    put :update, id: @magagine, magagine: { mgcode: @magagine.mgcode, mgname: @magagine.mgname, number: @magagine.number, price: @magagine.price, publisheddate: @magagine.publisheddate, publisher: @magagine.publisher, volume: @magagine.volume }
    assert_redirected_to magagine_path(assigns(:magagine))
  end

  test "should destroy magagine" do
    assert_difference('Magagine.count', -1) do
      delete :destroy, id: @magagine
    end

    assert_redirected_to magagines_path
  end
end
