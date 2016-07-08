require 'rails_helper'

RSpec.describe "supply_consumptions/new", type: :view do
  before(:each) do
    assign(:supply_consumption, SupplyConsumption.new(
      :supply => Supply.create!(name: 'supply'),
      :used_amount => 1,
      :production_run => ProductionRun.create!(lot_name: 'prod1',
        producer: Producer.create!(name: 'producer'),
        product: Product.create!(name: 'product')) 
    ))
  end

  it "renders new supply_consumption form" do
    render

    assert_select "form[action=?][method=?]", supply_consumptions_path, "post" do

      assert_select "input#supply_consumption_used_amount[name=?]", "supply_consumption[used_amount]"

    end
  end
end
