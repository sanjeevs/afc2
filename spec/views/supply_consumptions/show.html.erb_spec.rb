require 'rails_helper'

RSpec.describe "supply_consumptions/show", type: :view do
  before(:each) do
    @supply_consumption = FactoryGirl.create(:supply_consumption)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(@supply_consumption.production_run.lot_name)
    expect(rendered).to match(@supply_consumption.supply.name)
  end
end
