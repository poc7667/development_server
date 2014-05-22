require 'spec_helper'

describe "UrlCommands" do
  describe "GET /url_commands" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get url_commands_path
      response.status.should be(200)
    end
  end
end
