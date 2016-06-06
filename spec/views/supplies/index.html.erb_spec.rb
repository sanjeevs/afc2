require 'rails_helper'

RSpec.describe "supplies/index", type: :view do
  before(:each) do
    assign(:supplies, [
      Supply.create!(
        :name => "Name",
        :unique_name => "Unique Name",
        :left_amount => 1,
        :adjust => 2,
        :unit => "Unit",
        :comment => "MyText"
      ),
      Supply.create!(
        :name => "Name",
        :unique_name => "Unique Name",
        :left_amount => 1,
        :adjust => 2,
        :unit => "Unit",
        :comment => "MyText"
      )
    ])
  end

  it "renders a list of supplies" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Unique Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Unit".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
