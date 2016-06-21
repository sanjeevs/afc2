require 'rails_helper'

RSpec.describe "home/show", type: :view do
  before(:all) do
    @product = FactoryGirl.create(:product)
    @supply = FactoryGirl.create(:supply)
    @products = Product.all
    @supplies = Supply.all
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Product/)
    expect(rendered).to match(/Supply/)
  end
end
