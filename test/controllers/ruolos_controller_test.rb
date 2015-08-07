require 'test_helper'

class RuolosControllerTest < ActionController::TestCase
  setup do
    @ruolo = ruolos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ruolos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ruolo" do
    assert_difference('Ruolo.count') do
      post :create, ruolo: { ruolo: @ruolo.ruolo, user_id: @ruolo.user_id }
    end

    assert_redirected_to ruolo_path(assigns(:ruolo))
  end

  test "should show ruolo" do
    get :show, id: @ruolo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ruolo
    assert_response :success
  end

  test "should update ruolo" do
    patch :update, id: @ruolo, ruolo: { ruolo: @ruolo.ruolo, user_id: @ruolo.user_id }
    assert_redirected_to ruolo_path(assigns(:ruolo))
  end

  test "should destroy ruolo" do
    assert_difference('Ruolo.count', -1) do
      delete :destroy, id: @ruolo
    end

    assert_redirected_to ruolos_path
  end
end
