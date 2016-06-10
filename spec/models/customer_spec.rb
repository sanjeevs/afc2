require 'rails_helper'

RSpec.describe Customer, type: :model do
  before { @customer = FactoryGirl.create(:customer) }
  subject { @customer }

  it { should be_valid }

  describe 'when name is not present' do
    before { @customer.name = " " }
    it { should_not be_valid }
  end

  describe 'when name is too long' do
    before { @customer.name = 'a' * 51 }
    it { should_not be_valid }
  end

  describe 'when name has different case' do
    before do
      @customer_with_same_name = @customer.dup
      @customer_with_same_name.name = @customer.name.upcase
      @customer_with_same_name.save
    end
    it "is not valid" do
      expect(@customer_with_same_name).to_not be_valid
    end
  end

  describe 'when name has extra space' do
    before do
      @customer_with_same_name = @customer.dup
      @customer_with_same_name.name = @customer.name + "  " * 30
      @customer_with_same_name.save
    end
    it "is not valid" do
      expect(@customer_with_same_name).to_not be_valid
    end
  end
end
