json.array!(@visits) do |visit|
  json.extract! visit, :Client_id, :timeinstore
  json.url visit_url(visit, format: :json)
end
