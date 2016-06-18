require 'rails_helper'

RSpec.describe "SupplyConsumptions", type: :request do
  let(:user) { FactoryGirl.create(:user) }
  before { cookies[:remember_token] = user.remember_token }
  describe "GET /supply_consumptions" do
    it "works! (now write some real specs)" do
      get supply_consumptions_path
      expect(response).to have_http_status(200)
    end
  end
end
