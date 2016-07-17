require 'rails_helper'

RSpec.describe "suppliers/index", type: :view do
  before(:each) do
    @suppliers = Array.new(10) { FactoryGirl.create(:supplier) }
  end

  it "renders a list of suppliers" do
    render
    @suppliers.each do |entry|
      assert_select "a[href=?]", supplier_path(entry)
    end
  end
end
