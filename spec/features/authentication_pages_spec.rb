require 'rails_helper'

describe "Authentication" do
  subject { page }

  describe "for non signed in user" do
    before { visit products_path }

    it { should have_selector('h1', text: "Sign in") }
  end

  describe "as wrong user" do
    let(:user) { FactoryGirl.create(:user) }
    let(:wrong_user) { FactoryGirl.create(:user, name: "wrong user") }
    before { sign_in user }

    describe "visiting any page" do
      before { visit edit_user_path(wrong_user) }
      it { should have_selector('h1', text: "Sign in") }
    end
  end

  describe "user with name in upper case" do
    let(:user) { FactoryGirl.create(:user) }
    before do
      same_user = user.dup
      same_user.name = user.name.upcase
      sign_in same_user
    end
    describe "should be ok." do
      it { should_not have_selector('h1', text: "Sign in") }
    end
  end
end
