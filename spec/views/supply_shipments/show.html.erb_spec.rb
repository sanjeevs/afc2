require 'rails_helper'

RSpec.describe "supply_shipments/show", type: :view do
  before(:each) do
    @supply_shipment = assign(:supply_shipment, SupplyShipment.create!(
      :order_amount => 1,
      :return_amount => 2,
      :unit => "Unit",
      :product => nil,
      :supplier => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
