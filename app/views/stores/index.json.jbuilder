json.array!(@stores) do |store|
  json.extract! store, :Owner_id, :name, :address, :city, :country, :numberfittingroom, :type
  json.url store_url(store, format: :json)
end
