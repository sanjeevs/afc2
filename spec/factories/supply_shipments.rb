FactoryGirl.define do
  factory :supply_shipment do
    order_amount 1
    ship_date "2016-06-05"
    supplier
    supply
  end
end
