json.array!(@preferences) do |preference|
  json.extract! preference, :Client_id, :color, :brand, :theme
  json.url preference_url(preference, format: :json)
end
