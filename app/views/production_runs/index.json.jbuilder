json.array!(@production_runs) do |production_run|
  json.extract! production_run, :id, :lot_name, :producer_id, :product_id, :mfgd_amount, :mfgd_date, :expiry_date
  json.url production_run_url(production_run, format: :json)
end
