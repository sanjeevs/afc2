require 'rails_helper'

RSpec.describe "product_shipments/index", type: :view do
  before(:each) do
    product = Product.create! name: 'p1'
    producer = Producer.create! name: 'p2'

    assign(:product_shipments, [
      ProductShipment.create!(
        :order_amount => 1,
        :return_amount => 2,
        :production_run => ProductionRun.create!(
                               lot_name: "production_runx",
                               product_id: product.id,
                               producer_id: producer.id
        ),
        :customer => Customer.create!(name: 'customerx') 
      ),
      ProductShipment.create!(
        :order_amount => 1,
        :return_amount => 2,
        :production_run => ProductionRun.create!(
                              lot_name: "production_runy",
                               product_id: product.id,
                               producer_id: producer.id
        ),
        :customer => Customer.create!(name: 'customery') 
      )
    ])
  end

  it "renders a list of product_shipments" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
