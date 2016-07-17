require 'rails_helper'

RSpec.describe "supply_shipments/index", type: :view do
  before(:each) do
    @supply_shipments = Array.new(10) { FactoryGirl.create(:supply_shipment) }
  end

  it "renders a list of supply_shipments" do
    render
    @supply_shipments.each do |entry|
      assert_select "a[href=?]", supply_shipment_path(entry)
    end
  end
end
