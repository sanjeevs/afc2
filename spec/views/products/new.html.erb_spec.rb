require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :name => "MyString",
      :unique_name => "MyString",
      :left_amount => 1,
      :adjust => 1,
      :unit => "MyString",
      :comment => "MyText"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_name[name=?]", "product[name]"

      assert_select "input#product_unique_name[name=?]", "product[unique_name]"

      assert_select "input#product_left_amount[name=?]", "product[left_amount]"

      assert_select "input#product_adjust[name=?]", "product[adjust]"

      assert_select "input#product_unit[name=?]", "product[unit]"

      assert_select "textarea#product_comment[name=?]", "product[comment]"
    end
  end
end
