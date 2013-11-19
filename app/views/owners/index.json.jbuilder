json.array!(@owners) do |owner|
  json.extract! owner, :User_id, :facebookappid, :description, :facebookappkey
  json.url owner_url(owner, format: :json)
end
