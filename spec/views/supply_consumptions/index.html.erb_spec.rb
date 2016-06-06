require 'rails_helper'

RSpec.describe "supply_consumptions/index", type: :view do
  before(:each) do
    assign(:supply_consumptions, [
      SupplyConsumption.create!(
        :supply => nil,
        :used_amount => 1,
        :unit => "Unit",
        :production_run => 2
      ),
      SupplyConsumption.create!(
        :supply => nil,
        :used_amount => 1,
        :unit => "Unit",
        :production_run => 2
      )
    ])
  end

  it "renders a list of supply_consumptions" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
