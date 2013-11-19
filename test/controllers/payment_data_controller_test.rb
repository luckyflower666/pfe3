require 'test_helper'

class PaymentDataControllerTest < ActionController::TestCase
  setup do
    @payment_datum = payment_data(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:payment_data)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create payment_datum" do
    assert_difference('PaymentDatum.count') do
      post :create, payment_datum: { Client_id: @payment_datum.Client_id, cardId: @payment_datum.cardId, cardnumber: @payment_datum.cardnumber, expirationdata: @payment_datum.expirationdata, securitycode: @payment_datum.securitycode }
    end

    assert_redirected_to payment_datum_path(assigns(:payment_datum))
  end

  test "should show payment_datum" do
    get :show, id: @payment_datum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @payment_datum
    assert_response :success
  end

  test "should update payment_datum" do
    patch :update, id: @payment_datum, payment_datum: { Client_id: @payment_datum.Client_id, cardId: @payment_datum.cardId, cardnumber: @payment_datum.cardnumber, expirationdata: @payment_datum.expirationdata, securitycode: @payment_datum.securitycode }
    assert_redirected_to payment_datum_path(assigns(:payment_datum))
  end

  test "should destroy payment_datum" do
    assert_difference('PaymentDatum.count', -1) do
      delete :destroy, id: @payment_datum
    end

    assert_redirected_to payment_data_path
  end
end
