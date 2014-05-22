class UrlCommand < ActiveRecord::Base
    store_accessor :cgi_attributes, :name, :range, :security, :default_value
end
