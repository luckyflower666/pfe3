require 'test_helper'

class SocialDataControllerTest < ActionController::TestCase
  setup do
    @social_datum = social_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:social_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create social_datum" do
    assert_difference('SocialDatum.count') do
      post :create, social_datum: { Client_id: @social_datum.Client_id, facebook: @social_datum.facebook, facebookSecret: @social_datum.facebookSecret, facebookToken: @social_datum.facebookToken, twitter: @social_datum.twitter }
    end

    assert_redirected_to social_datum_path(assigns(:social_datum))
  end

  test "should show social_datum" do
    get :show, id: @social_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @social_datum
    assert_response :success
  end

  test "should update social_datum" do
    patch :update, id: @social_datum, social_datum: { Client_id: @social_datum.Client_id, facebook: @social_datum.facebook, facebookSecret: @social_datum.facebookSecret, facebookToken: @social_datum.facebookToken, twitter: @social_datum.twitter }
    assert_redirected_to social_datum_path(assigns(:social_datum))
  end

  test "should destroy social_datum" do
    assert_difference('SocialDatum.count', -1) do
      delete :destroy, id: @social_datum
    end

    assert_redirected_to social_data_path
  end
end
