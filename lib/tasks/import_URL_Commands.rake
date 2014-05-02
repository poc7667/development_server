namespace :sample_URL_Commands  do
  task :import => :environment do
    require 'pry'
    require 'ap'

    File.open("./lib/tasks/url_commands_sample.txt").each do |line|
      line.strip!
      params = line.split('...')
      attributes ={
        :name => params[0],
        :range => params[1],
        :security => params[2],
        :dafault_value => params[3],
      }
      url = UrlCommand.new(
        :model_name => "FD8156",
        :firmware_version => "0100b",        
        :cgi_name => params[0]
      )
      url.cgi_attributes = attributes
      url.save!
      ap(params)
      ap(attributes)
    end
  end
  
end
