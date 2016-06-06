require 'rails_helper'

RSpec.describe "supply_shipments/new", type: :view do
  before(:each) do
    assign(:supply_shipment, SupplyShipment.new(
      :order_amount => 1,
      :return_amount => 1,
      :unit => "MyString",
      :product => nil,
      :supplier => nil
    ))
  end

  it "renders new supply_shipment form" do
    render

    assert_select "form[action=?][method=?]", supply_shipments_path, "post" do

      assert_select "input#supply_shipment_order_amount[name=?]", "supply_shipment[order_amount]"

      assert_select "input#supply_shipment_return_amount[name=?]", "supply_shipment[return_amount]"

      assert_select "input#supply_shipment_unit[name=?]", "supply_shipment[unit]"

      assert_select "input#supply_shipment_product_id[name=?]", "supply_shipment[product_id]"

      assert_select "input#supply_shipment_supplier_id[name=?]", "supply_shipment[supplier_id]"
    end
  end
end
