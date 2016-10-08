require 'rails_helper'

RSpec.describe "RetailShelves", type: :request do
  let(:user) { FactoryGirl.create(:user) }
  before { cookies[:remember_token] =  user.remember_token }
  describe "GET /retail_shelves" do
    it "works! (now write some real specs)" do
      get retail_shelves_path
      expect(response).to have_http_status(200)
    end
  end
end
