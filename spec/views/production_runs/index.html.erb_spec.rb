require 'rails_helper'

RSpec.describe "production_runs/index", type: :view do
  before(:each) do
    @production_runs = Array.new(10) do |i|
        FactoryGirl.create(:production_run)
      end
  end

  it "renders a list of production_runs" do
    render
    @production_runs.each do |entry|
      assert_select "a", entry.lot_name
      assert_select "td", entry.invoice_number
    end
  end
end
