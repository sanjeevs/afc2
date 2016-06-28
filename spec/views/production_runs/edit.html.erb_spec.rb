require 'rails_helper'

RSpec.describe "production_runs/edit", type: :view do
  before(:each) do
    @production_run = assign(:production_run, ProductionRun.create!(
      :lot_name => "MyString",
      :producer => Producer.create!(name: 'producer'),
      :product => Product.create!(name: 'Product'),
      :mfgd_amount => 1
    ))
  end

  it "renders the edit production_run form" do
    render

    assert_select "form[action=?][method=?]", production_run_path(@production_run), "post" do

      assert_select "input#production_run_lot_name[name=?]", "production_run[lot_name]"

      assert_select "input#production_run_mfgd_amount[name=?]", "production_run[mfgd_amount]"
    end
  end
end
