require 'rails_helper'

RSpec.describe "supplies/show", type: :view do
  before(:each) do
    @supply = FactoryGirl.create(:supply_consumption).supply
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(@supply.name)
    expect(rendered).to match(@supply.comment)
    expect(rendered).to match(@supply.supply_consumptions.first.production_run.lot_name)
    expect(rendered).to match(@supply.supply_consumptions.first.production_run.producer.name)
  end
end
