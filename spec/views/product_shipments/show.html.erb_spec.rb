require 'rails_helper'

RSpec.describe "product_shipments/show", type: :view do
  before(:each) do
    product = Product.create! name: 'p1'
    producer = Producer.create! name: 'p2'
    @product_shipment = assign(:product_shipment, ProductShipment.create!(
      :order_amount => 1,
      :return_amount => 2,
      :production_run => ProductionRun.create!(
                          lot_name: "production_runx",
                          product_id: product.id,
                          producer_id: producer.id
      ),
      :customer => Customer.create!(name: "customer") 
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
