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
    @current_user = User.create!(name: 'admin', password: 'foobar',
                                 password_confirmation: 'foobar',
                                 admin: true)
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name1".downcase.to_s, :count => 1
    assert_select "tr>td", :text => "Name2".downcase.to_s, :count => 1
  end
end
