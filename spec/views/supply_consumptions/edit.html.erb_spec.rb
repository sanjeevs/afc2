require 'rails_helper'

RSpec.describe "supply_consumptions/edit", type: :view do
  before(:each) do
    @supply_consumption = FactoryGirl.create(:supply_consumption)
  end

  it "renders the edit supply_consumption form" do
    render

    assert_select "form[action=?][method=?]", supply_consumption_path(@supply_consumption), "post" do

      assert_select "select#supply_consumption_supply_id option[selected=selected]", @supply_consumption.supply.name

      assert_select "select#supply_consumption_production_run_id option[selected=selected]", @supply_consumption.production_run.lot_name

      assert_select "input#supply_consumption_used_amount[name=?]", "supply_consumption[used_amount]"

    end
  end
end
