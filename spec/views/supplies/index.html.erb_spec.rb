require 'rails_helper'

RSpec.describe "supplies/index", type: :view do
  before(:each) do
    assign(:supplies, [
      Supply.create!(
        :name => "Name1",
        :left_amount => 1999,
        :adjust => 2999,
        :unit => "Unit",
        :comment => "MyText"
      ),
      Supply.create!(
        :name => "Name2",
        :left_amount => 1999,
        :adjust => 2999,
        :unit => "Unit",
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of supplies" do
    render
    assert_select "tr>td", :text => "Name1".to_s, :count => 1
    assert_select "tr>td", :text => "name1".to_s, :count => 1
    assert_select "tr>td", :text => "Name2".to_s, :count => 1
    assert_select "tr>td", :text => "name2".to_s, :count => 1
    assert_select "tr>td", :text => 1999.to_s, :count => 2
    assert_select "tr>td", :text => 2999.to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
