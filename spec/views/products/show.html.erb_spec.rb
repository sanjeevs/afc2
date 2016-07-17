require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = FactoryGirl.create(:product)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(@product.name)
    expect(rendered).to match(@product.left_amount.to_s)
  end
end
