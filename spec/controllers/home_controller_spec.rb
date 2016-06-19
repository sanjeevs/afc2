require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe "Get #show" do
   it "should redirect to sign in page" do
    get :show
    expect(response).to redirect_to(signin_path)
   end
  end
end
