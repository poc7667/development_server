require 'spec_helper'

describe "url_commands/index" do
  before(:each) do
    assign(:url_commands, [
      stub_model(UrlCommand,
        :model_name => "Model Name",
        :firmware_version => "Firmware Version"
      ),
      stub_model(UrlCommand,
        :model_name => "Model Name",
        :firmware_version => "Firmware Version"
      )
    ])
  end

  it "renders a list of url_commands" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Model Name".to_s, :count => 2
    assert_select "tr>td", :text => "Firmware Version".to_s, :count => 2
  end
end
