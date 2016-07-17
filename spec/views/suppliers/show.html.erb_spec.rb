require 'rails_helper'

RSpec.describe "suppliers/show", type: :view do
  before(:each) do
    @supplier = FactoryGirl.create(:supplier)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(@supplier.name)
    expect(rendered).to match(@supplier.contact_name)
    @supplier.supply_shipments.each do |supply_shipment|
      expect(rendered).to match(supply_shipment.supply.name)
    end
  end
end
