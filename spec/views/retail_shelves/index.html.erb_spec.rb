require 'rails_helper'

RSpec.describe "retail_shelves/index", type: :view do
  before(:each) do
    @retail_shelves = Array.new(10) { FactoryGirl.create(:retail_shelf) }
  end

  it "renders a list of retail_shelves" do
    render
    @retail_shelves.each do |entry|
      assert_select "a[href=?]", retail_shelf_path(entry)
    end
  end
end
