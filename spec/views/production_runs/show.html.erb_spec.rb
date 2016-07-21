require 'rails_helper'

RSpec.describe "production_runs/show", type: :view do
  before(:each) do
    @production_run = FactoryGirl.create(:production_run, :complex)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match("#{@production_run.lot_name}")
    expect(rendered).to match("#{@production_run.product.name}")
    expect(rendered).to match("#{@production_run.producer.name}")
    expect(rendered).to match("#{@production_run.mfgd_amount}")
    expect(@production_run.supply_consumptions.size).not_to eql(0)
    @production_run.supply_consumptions.each do |supply_consumption|
      expect(rendered).to match("#{supply_consumption.supply.name}")
    end
    expect(@production_run.product_shipments.size).not_to eql(0)
    @production_run.product_shipments.each do |product_shipment|
      expect(rendered).to match("#{product_shipment.customer.name}")
    end
  end
end
