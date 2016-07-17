require 'rails_helper'

RSpec.describe "supply_shipments/new", type: :view do
  before(:each) do
    assign(:supply_shipment, SupplyShipment.new)
  end

  it "renders new supply_shipment form" do
    render

    assert_select "form[action=?][method=?]", supply_shipments_path, "post" do

      assert_select "input#supply_shipment_order_amount[name=?]", "supply_shipment[order_amount]"

    end
  end
end
