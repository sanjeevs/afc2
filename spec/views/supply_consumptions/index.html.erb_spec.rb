require 'rails_helper'

RSpec.describe "supply_consumptions/index", type: :view do
  before(:each) do
    assign(:supply_consumptions, [
      SupplyConsumption.create!(
      :supply => Supply.create!(name: 'supply1'),
      :used_amount => 1,
      :production_run => ProductionRun.create!(lot_name: 'prod1',
      producer: Producer.create!(name: 'producer1'),
      product: Product.create!(name: 'product1')) 
      ),
      SupplyConsumption.create!(
      :supply => Supply.create!(name: 'supply2'),
      :used_amount => 1,
      :production_run => ProductionRun.create!(lot_name: 'prod2',
      producer: Producer.create!(name: 'producer2'),
      product: Product.create!(name: 'product2')) 
      )
    ])
  end

  it "renders a list of supply_consumptions" do
    render
  end
end
