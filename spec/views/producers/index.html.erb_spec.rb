require 'rails_helper'

RSpec.describe "producers/index", type: :view do
  before(:each) do
    assign(:producers, [
      Producer.create!(
        :name => "Name",
        :unique_name => "Unique Name",
        :contact_name => "Contact Name",
        :address => "Address",
        :email => "Email",
        :phone => "Phone"
      ),
      Producer.create!(
        :name => "Name",
        :unique_name => "Unique Name",
        :contact_name => "Contact Name",
        :address => "Address",
        :email => "Email",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of producers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Unique Name".to_s, :count => 2
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
