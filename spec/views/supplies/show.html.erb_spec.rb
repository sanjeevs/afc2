require 'rails_helper'

RSpec.describe "supplies/show", type: :view do
  before(:each) do
    @supply = assign(:supply, Supply.create!(
      :name => "Name",
      :left_amount => 1,
      :adjust => 2,
      :unit => "Unit",
      :comment => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Unit/)
    expect(rendered).to match(/MyText/)
  end
end
