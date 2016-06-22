require 'rails_helper'

RSpec.describe "supply_consumptions/edit", type: :view do
  before(:each) do
    @supply_consumption = assign(:supply_consumption, SupplyConsumption.create!(
      :supply => Supply.create!(name: 'supply'),
      :used_amount => 1,
      :production_run => ProductionRun.create!(lot_name: 'prod1',
        producer: Producer.create!(name: 'producer'),
        product: Product.create!(name: 'product')) 
    ))
  end

  it "renders the edit supply_consumption form" do
    render

    assert_select "form[action=?][method=?]", supply_consumption_path(@supply_consumption), "post" do

      assert_select "input#supply_consumption_supply_id[name=?]", "supply_consumption[supply_id]"

      assert_select "input#supply_consumption_used_amount[name=?]", "supply_consumption[used_amount]"

      assert_select "input#supply_consumption_production_run[name=?]", "supply_consumption[production_run]"
    end
  end
end
