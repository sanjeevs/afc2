require 'rails_helper'

RSpec.describe "producers/edit", type: :view do
  before(:each) do
    @producer = FactoryGirl.create(:producer)
  end

  it "renders the edit producer form" do
    render

    assert_select "form[action=?][method=?]", producer_path(@producer), "post" do

      assert_select "input#producer_name[name=?]", "producer[name]"

      assert_select "input#producer_contact_name[name=?]", "producer[contact_name]"

      assert_select "input#producer_address[name=?]", "producer[address]"

      assert_select "input#producer_email[name=?]", "producer[email]"

      assert_select "input#producer_phone[name=?]", "producer[phone]"
    end
  end
end
