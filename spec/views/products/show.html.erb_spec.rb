require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :name => "Name 1 2 3",
      :left_amount => 1,
      :adjust => 2,
      :unit => "Unit",
      :comment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name 1 2 3/)
    expect(rendered).to match(/name123/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(/MyText/)
  end
end
