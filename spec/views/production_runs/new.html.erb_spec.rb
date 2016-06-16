require 'rails_helper'

RSpec.describe "production_runs/new", type: :view do
  before(:each) do
    assign(:production_run, ProductionRun.new(
      :lot_name => "MyString",
      :producer => Producer.create!(name: 'producer'),
      :product => Product.create!(name: 'Product'),
      :mfgd_amount => 1
    ))
  end

  it "renders new production_run form" do
    render

    assert_select "form[action=?][method=?]", production_runs_path, "post" do

      assert_select "input#production_run_lot_name[name=?]", "production_run[lot_name]"

      assert_select "input#production_run_producer_id[name=?]", "production_run[producer_id]"

      assert_select "input#production_run_product_id[name=?]", "production_run[product_id]"

      assert_select "input#production_run_mfgd_amount[name=?]", "production_run[mfgd_amount]"
    end
  end
end
