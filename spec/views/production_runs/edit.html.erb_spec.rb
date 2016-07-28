require 'rails_helper'

RSpec.describe "production_runs/edit", type: :view do
  before(:each) do
    @production_run = FactoryGirl.create(:production_run)
  end

  it "renders the edit production_run form" do
    render

    assert_select "form[action=?][method=?]", production_run_path(@production_run), "post" do

      assert_select "input#production_run_lot_name[value=?]", @production_run.lot_name
      assert_select "input#production_run_invoice_number[value=?]", @production_run.invoice_number
      assert_select "select#production_run_product_id option[selected=selected]", text: @production_run.product.name
      assert_select "input#production_run_mfgd_amount[name=?]", "production_run[mfgd_amount]"
    end
  end
end
