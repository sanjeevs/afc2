require 'rails_helper'

RSpec.describe "producers/show", type: :view do
  before(:each) do
    @producer = assign(:producer, Producer.create!(
      :name => "Name",
      :contact_name => "Contact Name",
      :address => "Address",
      :email => "Email",
      :phone => "Phone"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Contact Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Phone/)
  end
end
