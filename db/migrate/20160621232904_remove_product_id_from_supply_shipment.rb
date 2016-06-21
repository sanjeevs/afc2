class RemoveProductIdFromSupplyShipment < ActiveRecord::Migration
  def change
    remove_column :supply_shipments, :product_id
  end
end
