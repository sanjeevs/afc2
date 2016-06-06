json.array!(@supply_shipments) do |supply_shipment|
  json.extract! supply_shipment, :id, :order_amount, :return_amount, :unit, :ship_date, :product_id, :supplier_id
  json.url supply_shipment_url(supply_shipment, format: :json)
end
