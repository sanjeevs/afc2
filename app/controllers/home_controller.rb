class HomeController < ApplicationController
  before_action :signed_in_user
  def show
    @products = Product.all
    @supplies = Supply.all
    @customer_shipments = []
    @customers = Customer.all
    Struct.new("CustomerShipment", :name, :address, :total_order_amount)
    @customers.each do |customer|
      total_order_amount = ProductShipment.total_order_amount(customer.id)
      if total_order_amount > 0
        @customer_shipments.push(
              Struct::CustomerShipment.new(customer.name, customer.address, total_order_amount))
      end
      @customer_shipments.sort! do |a, b|
        b.total_order_amount <=> a.total_order_amount
      end
    end
  end
end
