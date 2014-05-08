require 'spec_helper'

describe "url_commands/show" do
  before(:each) do
    @url_command = assign(:url_command, stub_model(UrlCommand,
      :model_name => "Model Name",
      :firmware_version => "Firmware Version"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Model Name/)
    rendered.should match(/Firmware Version/)
  end
end
