class HomeController < ApplicationController
  before_action :signed_in_user
  def show
    @products = Product.all
    @supplies = Supply.all
  end
end
