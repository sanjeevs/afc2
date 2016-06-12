class DelProductionRunFromSupplyConsumptions < ActiveRecord::Migration
  def change
    remove_column :supply_consumptions, :production_run
  end
end
