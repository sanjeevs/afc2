require 'rails_helper'

RSpec.describe "customers/index", type: :view do
  before(:each) do
    @customers = Array.new(10) { FactoryGirl.create(:customer) }
  end

  it "renders a list of customers" do
    render
    @customers.each do |entry|
      assert_select "a[href=?]", customer_path(entry)
    end
  end
end
