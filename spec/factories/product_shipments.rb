FactoryGirl.define do
  factory :product_shipment do
    order_amount 1
    return_amount 1
    ship_date "2016-06-05"
    production_run
    customer
  end
end
