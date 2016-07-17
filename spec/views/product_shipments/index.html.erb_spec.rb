require 'rails_helper'

RSpec.describe "product_shipments/index", type: :view do
  before(:each) do
    @product_shipments = Array.new(10) do |i|
      FactoryGirl.create(:product_shipment)
    end
  end

  it "renders a list of product_shipments" do
    render
    @product_shipments.each do |entry|
      assert_select "td", entry.customer.name
    end
  end
end
