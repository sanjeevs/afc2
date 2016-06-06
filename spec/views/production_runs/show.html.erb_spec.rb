require 'rails_helper'

RSpec.describe "production_runs/show", type: :view do
  before(:each) do
    @production_run = assign(:production_run, ProductionRun.create!(
      :lot_name => "Lot Name",
      :producer => nil,
      :product => nil,
      :mfgd_amount => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Lot Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
  end
end
