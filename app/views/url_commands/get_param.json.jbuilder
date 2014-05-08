json.array!(@url_commands) do |url_command|
  # json.extract! url_command, :id, :model_name, :firmware_version

  url_command.cgi_attributes.keys.each do |key|
    json.set! key, url_command.cgi_attributes[key].to_s
  end
  
end
