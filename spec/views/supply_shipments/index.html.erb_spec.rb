require 'rails_helper'

RSpec.describe "supply_shipments/index", type: :view do
  before(:each) do
    assign(:supply_shipments, [
      SupplyShipment.create!(
        :order_amount => 1,
        :supply => Supply.create!(name: 'supply'),
        :supplier => Supplier.create!(name: 'supplier')
      ),
      SupplyShipment.create!(
        :order_amount => 1,
        :supply => Supply.create!(name: 'supply2'),
        :supplier => Supplier.create!(name: 'supplier2')
      )
    ])
  end

  it "renders a list of supply_shipments" do
    render
  end
end
