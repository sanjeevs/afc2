require "rails_helper"

RSpec.describe SupplyShipmentsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/supply_shipments").to route_to("supply_shipments#index")
    end

    it "routes to #new" do
      expect(:get => "/supply_shipments/new").to route_to("supply_shipments#new")
    end

    it "routes to #show" do
      expect(:get => "/supply_shipments/1").to route_to("supply_shipments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/supply_shipments/1/edit").to route_to("supply_shipments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/supply_shipments").to route_to("supply_shipments#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/supply_shipments/1").to route_to("supply_shipments#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/supply_shipments/1").to route_to("supply_shipments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/supply_shipments/1").to route_to("supply_shipments#destroy", :id => "1")
    end

  end
end
