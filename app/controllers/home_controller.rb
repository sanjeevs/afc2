class HomeController < ApplicationController
  def show
    @products = Product.all
    @supplies = Supply.all
  end
end
