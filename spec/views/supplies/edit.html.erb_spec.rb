require 'rails_helper'

RSpec.describe "supplies/edit", type: :view do
  before(:each) do
    @supply = FactoryGirl.create(:supply)
  end

  it "renders the edit supply form" do
    render

    assert_select "form[action=?][method=?]", supply_path(@supply), "post" do

      assert_select "input#supply_name[name=?]", "supply[name]"

      assert_select "input#supply_adjust[name=?]", "supply[adjust]"

      assert_select "input#supply_unit[name=?]", "supply[unit]"

      assert_select "input#supply_comment[name=?]", "supply[comment]"
    end
  end
end
