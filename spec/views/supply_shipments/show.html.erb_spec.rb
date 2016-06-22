require 'rails_helper'

RSpec.describe "supply_shipments/show", type: :view do
  before(:each) do
    @supply_shipment = assign(:supply_shipment, SupplyShipment.create!(
      :order_amount => 1,
      :supply => Supply.create!(name: 'supply'),
      :supplier => Supplier.create!(name: 'supplier')
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
  end
end
