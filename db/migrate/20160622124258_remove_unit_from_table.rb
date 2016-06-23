class RemoveUnitFromTable < ActiveRecord::Migration
  def change
    remove_column :product_shipments, :unit
    remove_column :supply_shipments, :unit
    remove_column :supply_consumptions, :unit
  end
end
