class AddSupplyToSupplyShipment < ActiveRecord::Migration
  def change
    add_reference :supply_shipments, :supply, index: true, foreign_key: true
  end
end
