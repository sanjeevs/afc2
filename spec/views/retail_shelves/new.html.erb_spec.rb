require 'rails_helper'

RSpec.describe "retail_shelves/new", type: :view do
  before(:each) do
    assign(:retail_shelf, RetailShelf.new)
  end

  it "renders new retail_shelf form" do
    render

    assert_select "form[action=?][method=?]", retail_shelves_path, "post" do

    end
  end
end
