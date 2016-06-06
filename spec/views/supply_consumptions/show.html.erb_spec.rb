require 'rails_helper'

RSpec.describe "supply_consumptions/show", type: :view do
  before(:each) do
    @supply_consumption = assign(:supply_consumption, SupplyConsumption.create!(
      :supply => nil,
      :used_amount => 1,
      :unit => "Unit",
      :production_run => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(/2/)
  end
end
