require 'rails_helper'

RSpec.describe "Categories", type: :request do
  describe "GET /categories" do
    let(:user) { FactoryGirl.create(:user) }
    it "fails if user is not logged in" do
      get categories_path
      expect(response).to have_http_status(302)
    end
    it "works if user is logged in" do
      cookies[:remember_token] =  user.remember_token
      get retail_shelves_path
      expect(response).to have_http_status(200)
    end
  end
end
