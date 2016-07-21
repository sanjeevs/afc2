require 'rails_helper'

RSpec.describe "home/show", type: :view do
  before(:each) do
    @products = Array.new(10) { FactoryGirl.create(:product) }
    @supplies = Array.new(10) { FactoryGirl.create(:supply) }
  end

  it "renders attributes in <p>" do
    render
    @products.each do |product| 
      expect(rendered).to match(product.name)
    end
    @supplies.each do |supply|
      expect(rendered).to match(supply.name)
    end
  end
end
