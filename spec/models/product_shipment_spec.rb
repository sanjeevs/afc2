require 'rails_helper'

RSpec.describe ProductShipment, type: :model do
  before { @product_shipment = FactoryGirl.create(:product_shipment) }
  subject { @product_shipment }

  it { should be_valid }

  describe "order amount default value" do
    before do
      @product_shipment.order_amount = nil
      @product_shipment.save
    end
    it { expect(@product_shipment.order_amount).to eql(0) }
  end

  describe "return amount default value" do
    before do
      @product_shipment.return_amount = nil
      @product_shipment.save
    end
    it { expect(@product_shipment.return_amount).to eql(0) }
  end

  describe "return amount value negative" do
    before do
      @product_shipment.return_amount = -1
      @product_shipment.save
    end
    it { should_not be_valid }
  end

end
