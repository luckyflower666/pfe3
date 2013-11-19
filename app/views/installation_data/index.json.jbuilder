json.array!(@installation_data) do |installation_datum|
  json.extract! installation_datum, :Client_id, :objectId, :appName, :appVersion, :badge, :deviceToken, :deviceType, :installationId, :parseVersion, :timeZone
  json.url installation_datum_url(installation_datum, format: :json)
end
