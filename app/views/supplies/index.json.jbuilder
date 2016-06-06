json.array!(@supplies) do |supply|
  json.extract! supply, :id, :name, :unique_name, :left_amount, :adjust, :unit, :comment
  json.url supply_url(supply, format: :json)
end
