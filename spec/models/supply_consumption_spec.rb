require 'rails_helper'

RSpec.describe SupplyConsumption, type: :model do
  before { @supply_consumption = FactoryGirl.create(:supply_consumption) }
  subject { @supply_consumption}

  it { should be_valid }
 
  describe "default value of used_amount" do
    before do
      @supply_consumption.used_amount = nil
      @supply_consumption.save
    end
    it { expect(@supply_consumption.used_amount).to eql(0.0) }
  end
end
