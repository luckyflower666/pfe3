json.array!(@foods) do |food|
  json.extract! food, :Item_id, :uid_food
  json.url food_url(food, format: :json)
end
