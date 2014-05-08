json.array!(@url_commands) do |url_command|
  json.extract! url_command, :id, :model_name, :firmware_version
  json.url url_command_url(url_command, format: :json)
end
