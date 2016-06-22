json.array!(@product_shipments) do |product_shipment|
  json.extract! product_shipment, :id, :order_amount, :return_amount,  :ship_date, :product_id, :customer_id
  json.url product_shipment_url(product_shipment, format: :json)
end
