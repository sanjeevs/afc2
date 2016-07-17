require 'rails_helper'

RSpec.describe "producers/show", type: :view do
  before(:each) do
    @producer = FactoryGirl.create(:producer)
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(@producer.name)
    expect(rendered).to match(@producer.contact_name)
    expect(rendered).to match(@producer.address)
    expect(rendered).to match(@producer.email)
    expect(rendered).to match(@producer.phone)
  end
end
