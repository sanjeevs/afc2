require 'rails_helper'

RSpec.describe "retail_shelves/new", type: :view do
  before(:each) do
    assign(:retail_shelf, RetailShelf.new)
  end

  it "renders new retail_shelf form" do
    render

    assert_select "form[action=?][method=?]", retail_shelves_path, "post" do

      assert_select "input#retail_shelf_shelf_amount[name=?]", "retail_shelf[shelf_amount]"

      assert_select "textarea#retail_shelf_comment[name=?]", "retail_shelf[comment]"

      assert_select "input#retail_shelf_updated_by[name=?]", "retail_shelf[updated_by]"

    end
  end
end
