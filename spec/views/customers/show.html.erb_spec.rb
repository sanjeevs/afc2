require 'rails_helper'

RSpec.describe "customers/show", type: :view do
  before(:each) do
    @customer = FactoryGirl.create(:customer)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(@customer.name)
    expect(rendered).to match(@customer.contact_name)
    expect(rendered).to match(@customer.address)
    expect(rendered).to match(@customer.email)
    expect(rendered).to match(@customer.phone)
  end
end
