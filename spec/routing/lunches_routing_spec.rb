require "spec_helper"

describe LunchesController do
  describe "routing" do

    it "routes to #index" do
      get("/lunches").should route_to("lunches#index")
    end

    it "routes to #new" do
      get("/lunches/new").should route_to("lunches#new")
    end

    it "routes to #show" do
      get("/lunches/1").should route_to("lunches#show", :id => "1")
    end

    it "routes to #edit" do
      get("/lunches/1/edit").should route_to("lunches#edit", :id => "1")
    end

    it "routes to #create" do
      post("/lunches").should route_to("lunches#create")
    end

    it "routes to #update" do
      put("/lunches/1").should route_to("lunches#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/lunches/1").should route_to("lunches#destroy", :id => "1")
    end

  end
end
