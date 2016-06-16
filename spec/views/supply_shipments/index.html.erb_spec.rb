require 'rails_helper'

RSpec.describe "supply_shipments/index", type: :view do
  before(:each) do
    assign(:supply_shipments, [
      SupplyShipment.create!(
        :order_amount => 1,
        :return_amount => 2,
        :unit => "Unit",
        :product => Product.create!(name: 'product'),
        :supplier => Supplier.create!(name: 'supplier')
      ),
      SupplyShipment.create!(
        :order_amount => 1,
        :return_amount => 2,
        :unit => "Unit",
        :product => Product.create!(name: 'product2'),
        :supplier => Supplier.create!(name: 'supplier2')
      )
    ])
  end

  it "renders a list of supply_shipments" do
    render
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
  end
end
