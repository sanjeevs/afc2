require 'rails_helper'

RSpec.describe "customers/show", type: :view do
  before(:each) do
    @customer = assign(:customer, Customer.create!(
      :name => "Name  1  2  3",
      :contact_name => "Contact Name",
      :address => "Address",
      :email => "Email",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name  1  2  3/)
    expect(rendered).to match(/name123/)
    expect(rendered).to match(/Contact Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
  end
end
