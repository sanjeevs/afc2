require "rails_helper"

RSpec.describe ProductShipmentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/product_shipments").to route_to("product_shipments#index")
    end

    it "routes to #new" do
      expect(:get => "/product_shipments/new").to route_to("product_shipments#new")
    end

    it "routes to #show" do
      expect(:get => "/product_shipments/1").to route_to("product_shipments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/product_shipments/1/edit").to route_to("product_shipments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/product_shipments").to route_to("product_shipments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/product_shipments/1").to route_to("product_shipments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/product_shipments/1").to route_to("product_shipments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/product_shipments/1").to route_to("product_shipments#destroy", :id => "1")
    end

  end
end
