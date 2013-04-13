require "spec_helper"

describe ConsulsController do
  describe "routing" do

    it "routes to #index" do
      get("/consuls").should route_to("consuls#index")
    end

    it "routes to #new" do
      get("/consuls/new").should route_to("consuls#new")
    end

    it "routes to #show" do
      get("/consuls/1").should route_to("consuls#show", :id => "1")
    end

    it "routes to #edit" do
      get("/consuls/1/edit").should route_to("consuls#edit", :id => "1")
    end

    it "routes to #create" do
      post("/consuls").should route_to("consuls#create")
    end

    it "routes to #update" do
      put("/consuls/1").should route_to("consuls#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/consuls/1").should route_to("consuls#destroy", :id => "1")
    end

  end
end
