json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :unique_name, :contact_name, :address, :email, :phone
  json.url customer_url(customer, format: :json)
end
