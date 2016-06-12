class AddProductionRunIndexToSupplyConsumpiton < ActiveRecord::Migration
  def change
    add_reference :supply_consumptions, :production_run, index: true
  end
end
