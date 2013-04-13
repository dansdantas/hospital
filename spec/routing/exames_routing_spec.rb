require "spec_helper"

describe ExamesController do
  describe "routing" do

    it "routes to #index" do
      get("/exames").should route_to("exames#index")
    end

    it "routes to #new" do
      get("/exames/new").should route_to("exames#new")
    end

    it "routes to #show" do
      get("/exames/1").should route_to("exames#show", :id => "1")
    end

    it "routes to #edit" do
      get("/exames/1/edit").should route_to("exames#edit", :id => "1")
    end

    it "routes to #create" do
      post("/exames").should route_to("exames#create")
    end

    it "routes to #update" do
      put("/exames/1").should route_to("exames#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/exames/1").should route_to("exames#destroy", :id => "1")
    end

  end
end
