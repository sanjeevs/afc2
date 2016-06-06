require "rails_helper"

RSpec.describe ProductionRunsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/production_runs").to route_to("production_runs#index")
    end

    it "routes to #new" do
      expect(:get => "/production_runs/new").to route_to("production_runs#new")
    end

    it "routes to #show" do
      expect(:get => "/production_runs/1").to route_to("production_runs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/production_runs/1/edit").to route_to("production_runs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/production_runs").to route_to("production_runs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/production_runs/1").to route_to("production_runs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/production_runs/1").to route_to("production_runs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/production_runs/1").to route_to("production_runs#destroy", :id => "1")
    end

  end
end
