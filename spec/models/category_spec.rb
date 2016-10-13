require 'rails_helper'

RSpec.describe Category, type: :model do
  before { @category = FactoryGirl.create(:category) }
  subject { @category }
  it { should be_valid }
  describe "associations" do
    before do
      10.times do
        customer = FactoryGirl.create(:customer)
        customer.category_id = @category.id
        customer.save!
      end
    end

    it "should have the correct size" do
      expect(@category.customers.size).to eql(10)
    end
  end
end
