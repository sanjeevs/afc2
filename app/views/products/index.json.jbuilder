json.array!(@products) do |product|
  json.extract! product, :id, :name, :unique_name, :left_amount, :adjust, :unit, :comment
  json.url product_url(product, format: :json)
end
