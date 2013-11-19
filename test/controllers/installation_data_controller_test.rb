require 'test_helper'

class InstallationDataControllerTest < ActionController::TestCase
  setup do
    @installation_datum = installation_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:installation_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create installation_datum" do
    assert_difference('InstallationDatum.count') do
      post :create, installation_datum: { Client_id: @installation_datum.Client_id, appName: @installation_datum.appName, appVersion: @installation_datum.appVersion, badge: @installation_datum.badge, deviceToken: @installation_datum.deviceToken, deviceType: @installation_datum.deviceType, installationId: @installation_datum.installationId, objectId: @installation_datum.objectId, parseVersion: @installation_datum.parseVersion, timeZone: @installation_datum.timeZone }
    end

    assert_redirected_to installation_datum_path(assigns(:installation_datum))
  end

  test "should show installation_datum" do
    get :show, id: @installation_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @installation_datum
    assert_response :success
  end

  test "should update installation_datum" do
    patch :update, id: @installation_datum, installation_datum: { Client_id: @installation_datum.Client_id, appName: @installation_datum.appName, appVersion: @installation_datum.appVersion, badge: @installation_datum.badge, deviceToken: @installation_datum.deviceToken, deviceType: @installation_datum.deviceType, installationId: @installation_datum.installationId, objectId: @installation_datum.objectId, parseVersion: @installation_datum.parseVersion, timeZone: @installation_datum.timeZone }
    assert_redirected_to installation_datum_path(assigns(:installation_datum))
  end

  test "should destroy installation_datum" do
    assert_difference('InstallationDatum.count', -1) do
      delete :destroy, id: @installation_datum
    end

    assert_redirected_to installation_data_path
  end
end
