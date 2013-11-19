require 'test_helper'

class ParseDataControllerTest < ActionController::TestCase
  setup do
    @parse_datum = parse_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parse_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parse_datum" do
    assert_difference('ParseDatum.count') do
      post :create, parse_datum: { ACL: @parse_datum.ACL, User_id: @parse_datum.User_id, authdata: @parse_datum.authdata, email: @parse_datum.email, emailverified: @parse_datum.emailverified, objectId: @parse_datum.objectId, password: @parse_datum.password, username: @parse_datum.username }
    end

    assert_redirected_to parse_datum_path(assigns(:parse_datum))
  end

  test "should show parse_datum" do
    get :show, id: @parse_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parse_datum
    assert_response :success
  end

  test "should update parse_datum" do
    patch :update, id: @parse_datum, parse_datum: { ACL: @parse_datum.ACL, User_id: @parse_datum.User_id, authdata: @parse_datum.authdata, email: @parse_datum.email, emailverified: @parse_datum.emailverified, objectId: @parse_datum.objectId, password: @parse_datum.password, username: @parse_datum.username }
    assert_redirected_to parse_datum_path(assigns(:parse_datum))
  end

  test "should destroy parse_datum" do
    assert_difference('ParseDatum.count', -1) do
      delete :destroy, id: @parse_datum
    end

    assert_redirected_to parse_data_path
  end
end
