require 'rails_helper'

RSpec.describe "supplies/edit", type: :view do
  before(:each) do
    @supply = assign(:supply, Supply.create!(
      :name => "name",
      :left_amount => 1,
      :adjust => 1,
      :unit => "MyString",
      :comment => "MyText"
    ))
  end

  it "renders the edit supply form" do
    render

    assert_select "form[action=?][method=?]", supply_path(@supply), "post" do

      assert_select "input#supply_name[name=?]", "supply[name]"

      assert_select "input#supply_unique_name[name=?]", "supply[unique_name]"

      assert_select "input#supply_left_amount[name=?]", "supply[left_amount]"

      assert_select "input#supply_adjust[name=?]", "supply[adjust]"

      assert_select "input#supply_unit[name=?]", "supply[unit]"

      assert_select "input#supply_comment[name=?]", "supply[comment]"
    end
  end
end
