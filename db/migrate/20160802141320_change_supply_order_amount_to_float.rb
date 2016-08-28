class ChangeSupplyOrderAmountToFloat < ActiveRecord::Migration
  def change
    change_column :supply_shipments, :order_amount, :float
  end
end
