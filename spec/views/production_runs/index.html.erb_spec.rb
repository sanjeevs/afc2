require 'rails_helper'

RSpec.describe "production_runs/index", type: :view do
  before(:each) do
    @producer = Producer.create!(name: 'producer X')
    @product = Product.create!(name: 'product X')
    assign(:production_runs, [
      ProductionRun.create!(
        :lot_name => "Lot Name1",
        :producer => @producer,
        :product => @product,
        :mfgd_amount => 1
      ),
      ProductionRun.create!(
        :lot_name => "Lot Name2",
        :producer => @producer,
        :product => @product,
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
