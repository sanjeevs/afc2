require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  before(:each) do
    @non_admin = User.create! name: 'non_admin', password: 'foobar', 
                             password_confirmation: 'foobar'

    @test_user = User.create! name: 'test', password: 'foobar', 
                             password_confirmation: 'foobar'
  end

  it "should not be able to add a user" do
   controller.current_user = @non_admin
   get :new
   expect(response).to redirect_to(signin_path)
  end

  it "should not be able to edit another user" do
   controller.current_user = @non_admin
   get :edit, {:id => @test_user.id}
   expect(response).to redirect_to(signin_path)
  end
  
  it "should be able to edit itself" do
   controller.current_user = @non_admin
   get :edit, {:id => @non_admin.id}
   expect(response).to render_template(:edit)
  end


end

