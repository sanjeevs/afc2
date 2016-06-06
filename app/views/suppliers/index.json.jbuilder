json.array!(@suppliers) do |supplier|
  json.extract! supplier, :id, :name, :unique_name, :contact_name, :address, :email, :phone
  json.url supplier_url(supplier, format: :json)
end
