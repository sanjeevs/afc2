json.array!(@retail_shelves) do |retail_shelf|
  json.extract! retail_shelf, :id, :shelf_amount, :comment, :updated_by, :updated_on, :customer_id, :product_id
  json.url retail_shelf_url(retail_shelf, format: :json)
end
