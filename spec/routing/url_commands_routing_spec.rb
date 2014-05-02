require "spec_helper"

describe UrlCommandsController do
  describe "routing" do

    it "routes to #index" do
      get("/url_commands").should route_to("url_commands#index")
    end

    it "routes to #new" do
      get("/url_commands/new").should route_to("url_commands#new")
    end

    it "routes to #show" do
      get("/url_commands/1").should route_to("url_commands#show", :id => "1")
    end

    it "routes to #edit" do
      get("/url_commands/1/edit").should route_to("url_commands#edit", :id => "1")
    end

    it "routes to #create" do
      post("/url_commands").should route_to("url_commands#create")
    end

    it "routes to #update" do
      put("/url_commands/1").should route_to("url_commands#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/url_commands/1").should route_to("url_commands#destroy", :id => "1")
    end

  end
end
