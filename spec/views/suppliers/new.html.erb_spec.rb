require 'rails_helper'

RSpec.describe "suppliers/new", type: :view do
  before(:each) do
    assign(:supplier, Supplier.new)
  end

  it "renders new supplier form" do
    render

    assert_select "form[action=?][method=?]", suppliers_path, "post" do

      assert_select "input#supplier_name[name=?]", "supplier[name]"


      assert_select "input#supplier_contact_name[name=?]", "supplier[contact_name]"

      assert_select "input#supplier_address[name=?]", "supplier[address]"

      assert_select "input#supplier_email[name=?]", "supplier[email]"

      assert_select "input#supplier_phone[name=?]", "supplier[phone]"
    end
  end
end
