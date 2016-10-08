require 'rails_helper'

RSpec.describe "retail_shelves/show", type: :view do
  before(:each) do
    @retail_shelf = FactoryGirl.create(:retail_shelf)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(@retail_shelf.comment)
  end
end
