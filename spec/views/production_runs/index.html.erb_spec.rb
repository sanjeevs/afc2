require 'rails_helper'

RSpec.describe "production_runs/index", type: :view do
  before(:each) do
    assign(:production_runs, [
      ProductionRun.create!(
        :lot_name => "Lot Name",
        :producer => nil,
        :product => nil,
        :mfgd_amount => 1
      ),
      ProductionRun.create!(
        :lot_name => "Lot Name",
        :producer => nil,
        :product => nil,
        :mfgd_amount => 1
      )
    ])
  end

  it "renders a list of production_runs" do
    render
    assert_select "tr>td", :text => "Lot Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
