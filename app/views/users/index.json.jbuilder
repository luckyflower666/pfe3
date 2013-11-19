json.array!(@users) do |user|
  json.extract! user, :name, :firstname, :gender, :age
  json.url user_url(user, format: :json)
end
