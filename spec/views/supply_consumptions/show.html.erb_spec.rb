require 'rails_helper'

RSpec.describe "supply_consumptions/show", type: :view do
  before(:each) do
    @supply_consumption = assign(:supply_consumption, SupplyConsumption.create!(
      :supply => Supply.create!(name: 'supply'),
      :used_amount => 1,
      :production_run => ProductionRun.create!(lot_name: 'prod1',
      producer: Producer.create!(name: 'producer'),
      product: Product.create!(name: 'product')) 
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/supply/)
  end
end
