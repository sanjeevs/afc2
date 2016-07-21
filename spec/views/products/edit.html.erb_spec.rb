require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  before(:each) do
    @product = FactoryGirl.create(:product)
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(@product), "post" do

      assert_select "input#product_name[name=?]", "product[name]"


      assert_select "input#product_adjust[name=?]", "product[adjust]"

      assert_select "input#product_unit[name=?]", "product[unit]"

      assert_select "input#product_comment[name=?]", "product[comment]"
    end
  end
end
