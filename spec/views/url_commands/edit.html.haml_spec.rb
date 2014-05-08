require 'spec_helper'

describe "url_commands/edit" do
  before(:each) do
    @url_command = assign(:url_command, stub_model(UrlCommand,
      :model_name => "MyString",
      :firmware_version => "MyString"
    ))
  end

  it "renders the edit url_command form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", url_command_path(@url_command), "post" do
      assert_select "input#url_command_model_name[name=?]", "url_command[model_name]"
      assert_select "input#url_command_firmware_version[name=?]", "url_command[firmware_version]"
    end
  end
end
