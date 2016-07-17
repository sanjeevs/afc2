require 'rails_helper'

RSpec.describe "supply_consumptions/index", type: :view do
  before(:each) do
    @supply_consumptions = Array.new(10) { FactoryGirl.create(:supply_consumption) }
  end

  it "renders a list of supply_consumptions" do
    render
    @supply_consumptions.each do |entry|
      assert_select  "a[href=?]", supply_consumption_path(entry)
    end
  end
end
