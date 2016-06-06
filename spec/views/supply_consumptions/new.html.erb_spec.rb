require 'rails_helper'

RSpec.describe "supply_consumptions/new", type: :view do
  before(:each) do
    assign(:supply_consumption, SupplyConsumption.new(
      :supply => nil,
      :used_amount => 1,
      :unit => "MyString",
      :production_run => 1
    ))
  end

  it "renders new supply_consumption form" do
    render

    assert_select "form[action=?][method=?]", supply_consumptions_path, "post" do

      assert_select "input#supply_consumption_supply_id[name=?]", "supply_consumption[supply_id]"

      assert_select "input#supply_consumption_used_amount[name=?]", "supply_consumption[used_amount]"

      assert_select "input#supply_consumption_unit[name=?]", "supply_consumption[unit]"

      assert_select "input#supply_consumption_production_run[name=?]", "supply_consumption[production_run]"
    end
  end
end
