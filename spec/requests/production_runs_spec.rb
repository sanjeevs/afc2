require 'rails_helper'

RSpec.describe "ProductionRuns", type: :request do
  let(:user) { FactoryGirl.create(:user) }
  before { cookies[:remember_token] = user.remember_token }
  describe "GET /production_runs" do
    it "works! (now write some real specs)" do
      get production_runs_path
      expect(response).to have_http_status(200)
    end
  end
end
