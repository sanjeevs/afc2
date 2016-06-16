require 'rails_helper'

RSpec.describe "product_shipments/show", type: :view do
  before(:each) do
    @product_shipment = assign(:product_shipment, ProductShipment.create!(
      :order_amount => 1,
      :return_amount => 2,
      :unit => "Unit",
      :product => Product.create!(name: 'product'),
      :customer => Customer.create!(name: "customer") 
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
