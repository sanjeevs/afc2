require "rails_helper"

RSpec.describe SupplyConsumptionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/supply_consumptions").to route_to("supply_consumptions#index")
    end

    it "routes to #new" do
      expect(:get => "/supply_consumptions/new").to route_to("supply_consumptions#new")
    end

    it "routes to #show" do
      expect(:get => "/supply_consumptions/1").to route_to("supply_consumptions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/supply_consumptions/1/edit").to route_to("supply_consumptions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/supply_consumptions").to route_to("supply_consumptions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/supply_consumptions/1").to route_to("supply_consumptions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/supply_consumptions/1").to route_to("supply_consumptions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/supply_consumptions/1").to route_to("supply_consumptions#destroy", :id => "1")
    end

  end
end
