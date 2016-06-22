require 'rails_helper'

RSpec.describe "supply_shipments/new", type: :view do
  before(:each) do
    assign(:supply_shipment, SupplyShipment.new(
      :order_amount => 1,
      :supply => Supply.create!(name: 'supply'),
      :supplier => Supplier.create!(name: 'supplier')
    ))
  end

  it "renders new supply_shipment form" do
    render

    assert_select "form[action=?][method=?]", supply_shipments_path, "post" do

      assert_select "input#supply_shipment_order_amount[name=?]", "supply_shipment[order_amount]"


      assert_select "input#supply_shipment_supply_id[name=?]", "supply_shipment[supply_id]"

      assert_select "input#supply_shipment_supplier_id[name=?]", "supply_shipment[supplier_id]"
    end
  end
end
