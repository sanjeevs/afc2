require 'rails_helper'

RSpec.describe "product_shipments/edit", type: :view do
  before(:each) do
    @product_shipment = FactoryGirl.create(:product_shipment)
  end

  it "renders the edit product_shipment form" do
    render

    assert_select "form[action=?][method=?]", product_shipment_path(@product_shipment), "post" do

      assert_select "select#product_shipment_customer_id option[selected=selected]", text: @product_shipment.customer.name
      assert_select "input#product_shipment_order_amount[name=?]", "product_shipment[order_amount]"

      assert_select "input#product_shipment_return_amount[name=?]", "product_shipment[return_amount]"

    end
  end
end
