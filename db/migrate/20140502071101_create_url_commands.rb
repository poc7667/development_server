class CreateUrlCommands < ActiveRecord::Migration
  def change
    create_table :url_commands do |t|
      t.string :model_name
      t.string :firmware_version
      t.timestamps
    end
  end
end
