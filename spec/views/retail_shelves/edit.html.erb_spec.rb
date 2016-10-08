require 'rails_helper'

RSpec.describe "retail_shelves/edit", type: :view do
  before(:each) do
    @retail_shelf = FactoryGirl.create(:retail_shelf)
  end

  it "renders the edit retail_shelf form" do
    render

    assert_select "form[action=?][method=?]", retail_shelf_path(@retail_shelf), "post" do

      assert_select "input#retail_shelf_shelf_amount[name=?]", "retail_shelf[shelf_amount]"

      assert_select "input#retail_shelf_comment[name=?]", "retail_shelf[comment]"
    end
  end
end
