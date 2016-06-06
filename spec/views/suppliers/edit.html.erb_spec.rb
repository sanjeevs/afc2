require 'rails_helper'

RSpec.describe "suppliers/edit", type: :view do
  before(:each) do
    @supplier = assign(:supplier, Supplier.create!(
      :name => "MyString",
      :unique_name => "MyString",
      :contact_name => "MyString",
      :address => "MyString",
      :email => "MyString",
      :phone => "MyString"
    ))
  end

  it "renders the edit supplier form" do
    render

    assert_select "form[action=?][method=?]", supplier_path(@supplier), "post" do

      assert_select "input#supplier_name[name=?]", "supplier[name]"

      assert_select "input#supplier_unique_name[name=?]", "supplier[unique_name]"

      assert_select "input#supplier_contact_name[name=?]", "supplier[contact_name]"

      assert_select "input#supplier_address[name=?]", "supplier[address]"

      assert_select "input#supplier_email[name=?]", "supplier[email]"

      assert_select "input#supplier_phone[name=?]", "supplier[phone]"
    end
  end
end
