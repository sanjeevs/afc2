require 'rails_helper'

RSpec.describe "home/show", type: :view do
  before(:each) do
    product = Product.new(name: 'Home product')
    supply = Supply.new(name: 'Home supply')
    @products = [product] 
    @supplies = [supply] 
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Product/)
    expect(rendered).to match(/Supply/)
  end
end
