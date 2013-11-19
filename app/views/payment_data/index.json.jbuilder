json.array!(@payment_data) do |payment_datum|
  json.extract! payment_datum, :Client_id, :cardnumber, :cardId, :expirationdata, :securitycode
  json.url payment_datum_url(payment_datum, format: :json)
end
