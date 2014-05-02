class AddCgiNameToUrlCommand < ActiveRecord::Migration
  def change
    add_column :url_commands, :cgi_name, :string
  end
end
