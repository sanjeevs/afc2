require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    @products = Array.new(10) { FactoryGirl.create(:product) }
  end

  it "renders a list of products" do
    render
    @products.each do |entry|
      assert_select "a[href=?]", product_path(entry)
    end
  end
end
