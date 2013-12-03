require 'test_helper'

class ClothingsControllerTest < ActionController::TestCase
  setup do
    @clothing = clothings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clothings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clothing" do
    assert_difference('Clothing.count') do
      post :create, clothing: { Item_id: @clothing.Item_id, brand: @clothing.brand, color: @clothing.color, size: @clothing.size, uid_cloth: @clothing.uid_cloth }
    end

    assert_redirected_to clothing_path(assigns(:clothing))
  end

  test "should show clothing" do
    get :show, id: @clothing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clothing
    assert_response :success
  end

  test "should update clothing" do
    patch :update, id: @clothing, clothing: { Item_id: @clothing.Item_id, brand: @clothing.brand, color: @clothing.color, size: @clothing.size, uid_cloth: @clothing.uid_cloth }
    assert_redirected_to clothing_path(assigns(:clothing))
  end

  test "should destroy clothing" do
    assert_difference('Clothing.count', -1) do
      delete :destroy, id: @clothing
    end

    assert_redirected_to clothings_path
  end
end
