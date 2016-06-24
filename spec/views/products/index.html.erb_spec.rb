require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :name => "Name123  ",
        :left_amount => 11,
        :adjust => 21,
        :unit => "Unit",
        :comment => "MyText"
      ),
      Product.create!(
        :name => "  Name2",
        :left_amount => 11,
        :adjust => 21,
        :unit => "Unit",
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Name123".to_s, :count => 1
    assert_select "tr>td", :text => "Name2".to_s, :count => 1
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
