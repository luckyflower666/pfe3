json.array!(@clothings) do |clothing|
  json.extract! clothing, :Item_id, :size, :uid_cloth, :brand, :color
  json.url clothing_url(clothing, format: :json)
end
