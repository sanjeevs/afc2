require 'rails_helper'

RSpec.describe "supply_shipments/show", type: :view do
  before(:each) do
    @supply_shipment = FactoryGirl.create(:supply_shipment)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(@supply_shipment.supply.name)
    expect(rendered).to match(@supply_shipment.supplier.name)
  end
end
