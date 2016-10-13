require 'rails_helper'

RSpec.describe "Customers", type: :request do
  let(:user) { FactoryGirl.create(:user) }
  describe "GET /customers" do
    it "fails if user is not logged in." do
      get customers_path
      expect(response).to have_http_status(302)
    end
    it "works if user is logged in" do
      cookies[:remember_token] =  user.remember_token
      get customers_path
      expect(response).to have_http_status(200)
    end
  end
end
