require 'rails_helper'

RSpec.describe "supplies/new", type: :view do
  before(:each) do
    assign(:supply, Supply.new)
  end

  it "renders new supply form" do
    render

    assert_select "form[action=?][method=?]", supplies_path, "post" do

      assert_select "input#supply_name[name=?]", "supply[name]"

      assert_select "input#supply_unit[name=?]", "supply[unit]"

      assert_select "input#supply_comment[name=?]", "supply[comment]"
    end
  end
end
