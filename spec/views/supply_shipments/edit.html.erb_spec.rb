require 'rails_helper'

RSpec.describe "supply_shipments/edit", type: :view do
  before(:each) do
    @supply_shipment = FactoryGirl.create(:supply_shipment)
  end

  it "renders the edit supply_shipment form" do
    render

    assert_select "form[action=?][method=?]", supply_shipment_path(@supply_shipment), "post" do

      assert_select "input#supply_shipment_order_amount[name=?]", "supply_shipment[order_amount]"

      assert_select "select#supply_shipment_supply_id option[selected=selected]", text:@supply_shipment.supply.name 
      
      assert_select "select#supply_shipment_supplier_id option[selected=selected]", text:@supply_shipment.supplier.name 
    end
  end
end
