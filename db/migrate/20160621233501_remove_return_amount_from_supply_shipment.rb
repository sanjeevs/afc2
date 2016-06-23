class RemoveReturnAmountFromSupplyShipment < ActiveRecord::Migration
  def change
    remove_column :supply_shipments, :return_amount
  end
end
