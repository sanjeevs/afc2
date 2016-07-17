require 'rails_helper'

RSpec.describe "customers/edit", type: :view do
  before(:each) do
    @customer = FactoryGirl.create(:customer)
  end

  it "renders the edit customer form" do
    render

    assert_select "form[action=?][method=?]", customer_path(@customer), "post" do

      assert_select "input#customer_name[name=?]", "customer[name]"

      assert_select "input#customer_contact_name[name=?]", "customer[contact_name]"

      assert_select "input#customer_address[name=?]", "customer[address]"

      assert_select "input#customer_email[name=?]", "customer[email]"

      assert_select "input#customer_phone[name=?]", "customer[phone]"
    end
  end
end
