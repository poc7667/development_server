require 'spec_helper'

describe "url_commands/new" do
  before(:each) do
    assign(:url_command, stub_model(UrlCommand,
      :model_name => "MyString",
      :firmware_version => "MyString"
    ).as_new_record)
  end

  it "renders new url_command form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", url_commands_path, "post" do
      assert_select "input#url_command_model_name[name=?]", "url_command[model_name]"
      assert_select "input#url_command_firmware_version[name=?]", "url_command[firmware_version]"
    end
  end
end
