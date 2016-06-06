require 'rails_helper'

RSpec.describe "product_shipments/new", type: :view do
  before(:each) do
    assign(:product_shipment, ProductShipment.new(
      :order_amount => 1,
      :return_amount => 1,
      :unit => "MyString",
      :product => nil,
      :customer => nil
    ))
  end

  it "renders new product_shipment form" do
    render

    assert_select "form[action=?][method=?]", product_shipments_path, "post" do

      assert_select "input#product_shipment_order_amount[name=?]", "product_shipment[order_amount]"

      assert_select "input#product_shipment_return_amount[name=?]", "product_shipment[return_amount]"

      assert_select "input#product_shipment_unit[name=?]", "product_shipment[unit]"

      assert_select "input#product_shipment_product_id[name=?]", "product_shipment[product_id]"

      assert_select "input#product_shipment_customer_id[name=?]", "product_shipment[customer_id]"
    end
  end
end
