require 'rails_helper'

RSpec.describe "product_shipments/show", type: :view do
  before(:each) do
    @product_shipment = FactoryGirl.create(:product_shipment)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match("#{@product_shipment.customer.name}")
    expect(rendered).to match("#{@product_shipment.production_run.lot_name}")
    expect(rendered).to match("#{@product_shipment.order_amount}")
  end
end
