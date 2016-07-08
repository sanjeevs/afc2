require 'rails_helper'

RSpec.describe "supply_shipments/edit", type: :view do
  before(:each) do
    @supply_shipment = assign(:supply_shipment, SupplyShipment.create!(
      :order_amount => 1,
      :supply => Supply.create!(name: 'supply'),
      :supplier => Supplier.create!(name: 'supplier') 
    ))
  end

  it "renders the edit supply_shipment form" do
    render

    assert_select "form[action=?][method=?]", supply_shipment_path(@supply_shipment), "post" do

      assert_select "input#supply_shipment_order_amount[name=?]", "supply_shipment[order_amount]"

    end
  end
end
