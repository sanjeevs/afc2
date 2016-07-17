require 'rails_helper'

RSpec.describe "product_shipments/new", type: :view do
  before(:each) do
    assign(:product_shipment, ProductShipment.new)
  end

  it "renders new product_shipment form" do
    render

    assert_select "form[action=?][method=?]", product_shipments_path, "post" do

      assert_select "select#product_shipment_customer_id option", text: "Please select a customer"
      assert_select "select#product_shipment_production_run_id, options", text: "Please select a production run"
      assert_select "input#product_shipment_order_amount[name=?]", "product_shipment[order_amount]"

      assert_select "input#product_shipment_return_amount[name=?]", "product_shipment[return_amount]"

    end
  end
end
