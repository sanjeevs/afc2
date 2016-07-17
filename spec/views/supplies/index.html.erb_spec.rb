require 'rails_helper'

RSpec.describe "supplies/index", type: :view do
  before(:each) do
    @supplies = Array.new(10) { FactoryGirl.create(:supply) }
  end

  it "renders a list of supplies" do
    render
    @supplies.each do |entry|
      assert_select "a[href=?]", supply_path(entry)
    end
  end
end
