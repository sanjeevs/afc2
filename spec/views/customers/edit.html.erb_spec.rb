require 'rails_helper'

RSpec.describe "customers/edit", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :name => "MyString",
      :unique_name => "MyString",
      :contact_name => "MyString",
      :address => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit customer form" do
    render

    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do

      assert_select "input#customer_name[name=?]", "customer[name]"

      assert_select "input#customer_unique_name[name=?]", "customer[unique_name]"

      assert_select "input#customer_contact_name[name=?]", "customer[contact_name]"

      assert_select "input#customer_address[name=?]", "customer[address]"

      assert_select "input#customer_email[name=?]", "customer[email]"

      assert_select "input#customer_phone[name=?]", "customer[phone]"
    end
  end
end
