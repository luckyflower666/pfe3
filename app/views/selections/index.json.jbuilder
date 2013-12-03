json.array!(@selections) do |selection|
  json.extract! selection, :Visit_id
  json.url selection_url(selection, format: :json)
end
