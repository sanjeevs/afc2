require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Name1",
        :password => "foobar",
        :password_confirmation => "foobar",
        :admin => false
      ),
      User.create!(
        :name => "Name2",
        :password => "foobar",
        :password_confirmation => "foobar",
        :admin => false
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name1".to_s, :count => 1
    assert_select "tr>td", :text => "Name2".to_s, :count => 1
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
