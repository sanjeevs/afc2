require 'rails_helper'

RSpec.describe "supply_shipments/index", type: :view do
  before(:each) do
    assign(:supply_shipments, [
      SupplyShipment.create!(
        :order_amount => 1,
        :return_amount => 2,
        :unit => "Unit",
        :product => nil,
        :supplier => nil
      ),
      SupplyShipment.create!(
        :order_amount => 1,
        :return_amount => 2,
        :unit => "Unit",
        :product => nil,
        :supplier => nil
      )
    ])
  end

  it "renders a list of supply_shipments" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
