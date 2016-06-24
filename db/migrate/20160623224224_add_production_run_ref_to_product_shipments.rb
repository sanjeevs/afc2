class AddProductionRunRefToProductShipments < ActiveRecord::Migration
  def change
    add_reference :product_shipments, :production_run, index: true, foreign_key: true
  end
end
