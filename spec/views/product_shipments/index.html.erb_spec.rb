require 'rails_helper'

RSpec.describe "product_shipments/index", type: :view do
  before(:each) do
    assign(:product_shipments, [
      ProductShipment.create!(
        :order_amount => 1,
        :return_amount => 2,
        :unit => "Unit",
        :product => Product.create!(name: "productx"),
        :customer => Customer.create!(name: 'customerx') 
      ),
      ProductShipment.create!(
        :order_amount => 1,
        :return_amount => 2,
        :unit => "Unit",
        :product => Product.create!(name: "producty"),
        :customer => Customer.create!(name: 'customery') 
      )
    ])
  end

  it "renders a list of product_shipments" do
    render
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
