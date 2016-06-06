json.array!(@producers) do |producer|
  json.extract! producer, :id, :name, :unique_name, :contact_name, :address, :email, :phone
  json.url producer_url(producer, format: :json)
end
