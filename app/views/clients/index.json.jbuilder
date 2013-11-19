json.array!(@clients) do |client|
  json.extract! client, :User_id, :sizeup, :sizedown, :sizehoes, :IMEI
  json.url client_url(client, format: :json)
end
