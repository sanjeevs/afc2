require 'rails_helper'

RSpec.describe "production_runs/index", type: :view do
  before(:each) do
    assign(:production_runs, [
      ProductionRun.create!(
        :lot_name => "Lot Name1",
        :producer => Producer.create!(name: 'producer1'),
        :product => Product.create!(name: 'Product1'),
        :mfgd_amount => 1
      ),
      ProductionRun.create!(
        :lot_name => "Lot Name2",
        :producer => Producer.create!(name: 'producer2'),
        :product => Product.create!(name: 'Product2'),
        :mfgd_amount => 1
      )
    ])
  end

  it "renders a list of production_runs" do
    render
    assert_select "tr>td", :text => "Lot Name1".to_s, :count => 1
    assert_select "tr>td", :text => "Lot Name2".to_s, :count => 1
  end
end
