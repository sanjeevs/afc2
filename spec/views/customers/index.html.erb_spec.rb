require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    assign(:customers, [
      Customer.create!(
        :name => "Name 1",
        :contact_name => "Contact Name",
        :address => "Address",
        :email => "Email",
        :phone => "Phone"
      ),
      Customer.create!(
        :name => "Name 2",
        :contact_name => "Contact Name",
        :address => "Address",
        :email => "Email",
        :phone => "Phone"
      )
    ])
  end

  it "renders a list of customers" do
    render
    assert_select "tr>td", :text => "Name 1".to_s, :count => 1
    assert_select "tr>td", :text => "Name 2".to_s, :count => 1
    assert_select "tr>td", :text => "Contact Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
  end
end
