json.array!(@social_data) do |social_datum|
  json.extract! social_datum, :Client_id, :facebookToken, :facebookSecret, :facebook, :twitter
  json.url social_datum_url(social_datum, format: :json)
end
