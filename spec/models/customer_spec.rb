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

  describe "associations" do
    before do
      10.times do
        @product_shipment = FactoryGirl.create(:product_shipment)
        @product_shipment.customer_id = @customer.id
        @product_shipment.save!
      end
    end

    it "should have correct size" do
      expect(@customer.product_shipments.size).to eql(10) 
    end
    
  end

end
