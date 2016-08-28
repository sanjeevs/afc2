require 'rails_helper'

RSpec.describe SupplyShipment, type: :model do
  before { @supply_shipment = FactoryGirl.create(:supply_shipment) }
  subject { @supply_shipment }

  it { should be_valid }

  describe "order amount default value" do
    before do
      @supply_shipment.order_amount = nil
      @supply_shipment.save
    end
    it { expect(@supply_shipment.order_amount).to eql(0.0) }
  end
end
