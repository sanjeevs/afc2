require 'rails_helper'

RSpec.describe "producers/index", type: :view do
  before(:each) do
    @producers = Array.new(10) { FactoryGirl.create(:producer) }
  end

  it "renders a list of producers" do
    render
    @producers.each do |entry|
      assert_select "a", entry.name
    end
  end
end
