json.array!(@items) do |item|
  json.extract! item, :Selection_id, :title, :subtitle, :describe, :state, :reference, :categorie
  json.url item_url(item, format: :json)
end
