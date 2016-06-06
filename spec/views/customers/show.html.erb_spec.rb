require 'rails_helper'

RSpec.describe "customers/show", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :name => "Name",
      :unique_name => "Unique Name",
      :contact_name => "Contact Name",
      :address => "Address",
      :email => "Email",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Unique Name/)
    expect(rendered).to match(/Contact Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
  end
end
