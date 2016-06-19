require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe UsersController, type: :controller do

  before(:all) do
    @admin_user = User.create!  name: "admin", password: 'foobar', password_confirmation: 'foobar', admin: true 
    @non_admin_user = User.create!  name: "non_admin", password: 'foobar', password_confirmation: 'foobar', admin: true 
  end

  describe "GET #index" do
    it "assigns all users as @users" do
      controller.current_user = @admin_user
      get :index, {}
      response.should render_template :index
    end
  end

  describe "GET #show" do
    it "assigns the requested user as @user" do
      controller.current_user = @admin_user
      get :show, {:id => @admin_user.id}
      expect(assigns(:user)).to eq(@admin_user)
    end
  end

  describe "GET #show of another user" do
    it "assigns the requested user as @non_admin" do
      controller.current_user = @admin_user
      get :show, {:id => @non_admin_user.id}
      expect(assigns(:user)).to eq(@non_admin_user)
    end
  end

  describe "GET #new" do
    it "assigns a new user as @user" do
      controller.current_user = @admin_user
      get :new, {}
      expect(assigns(:user)).to be_a_new(User)
    end
  end

  describe "GET #edit" do
    it "should be able to edit another user" do
      controller.current_user = @admin_user
      get :edit, {:id => @non_admin_user.id}
      response.should render_template :edit
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new non admin user" do
        expect {
          post :create, {:user => {name: 'test', password: 'foobar', 
                                           password_confirmation: 'foobar', admin: true} }
        }.to change(User, :count).by(1)
        expect(User.find_by(name: 'test').admin).to eql(false)
      end
    end
  end

end
