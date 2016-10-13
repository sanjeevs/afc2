require 'rails_helper'

RSpec.describe Account, type: :model do
  before { @account = FactoryGirl.create(:account) }
  subject { @account }
  it { should be_valid }

  describe "associations" do
    before do
      10.times do
        customer = FactoryGirl.create(:customer)
        customer.account_id = @account.id
        customer.save!
      end
    end

    it "should have the correct size" do
      expect(@account.customers.size).to eql(10)
    end
  end

end
