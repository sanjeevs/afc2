require 'rails_helper'

RSpec.describe Supply, type: :model do
 before { @supply = FactoryGirl.create(:supply, :complex) }
  subject { @supply }

  it { should be_valid }

  describe 'when name is not present' do
    before { @supply.name = " " }
    it { should_not be_valid }
  end

  describe 'when name is too long' do
    before { @supply.name = 'a' * 51 }
    it { should_not be_valid }
  end

  describe 'when name has different case' do
    before do
      @supply_with_same_name = @supply.dup
      @supply_with_same_name.name = @supply.name.upcase
      @supply_with_same_name.save
    end
    it "is not valid" do
      expect(@supply_with_same_name).to_not be_valid
    end
  end

  describe 'when name has extra space' do
    before do
      @supply_with_same_name = @supply.dup
      @supply_with_same_name.name = @supply.name + "  " * 30
      @supply_with_same_name.save
    end
    it "is not valid" do
      expect(@supply_with_same_name).to_not be_valid
    end
  end
  
  describe "total consumed amount" do
    before do
      @total_consumed_amount = 0
      @supply.supply_consumptions.each do |supply_consumption|
        @total_consumed_amount += supply_consumption.used_amount
      end
    end
    it "should sum all the used amounts" do
      expect(@total_consumed_amount).not_to eql(0)
      expect(@supply.total_consumptions).to eql(@total_consumed_amount)
    end
  end

  describe "total orders" do
    before do
      @total_order_amount = 0
      @supply.supply_shipments.each do |supply_shipment|
        @total_order_amount += supply_shipment.order_amount
      end
    end
    it "should sum all the shipment amount" do
      expect(@total_order_amount).not_to eql(0)
      expect(@supply.total_orders).to eql(@total_order_amount)
    end
  end

end
