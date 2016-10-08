require "rails_helper"

RSpec.describe RetailShelvesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/retail_shelves").to route_to("retail_shelves#index")
    end

    it "routes to #new" do
      expect(:get => "/retail_shelves/new").to route_to("retail_shelves#new")
    end

    it "routes to #show" do
      expect(:get => "/retail_shelves/1").to route_to("retail_shelves#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/retail_shelves/1/edit").to route_to("retail_shelves#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/retail_shelves").to route_to("retail_shelves#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/retail_shelves/1").to route_to("retail_shelves#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/retail_shelves/1").to route_to("retail_shelves#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/retail_shelves/1").to route_to("retail_shelves#destroy", :id => "1")
    end

  end
end
