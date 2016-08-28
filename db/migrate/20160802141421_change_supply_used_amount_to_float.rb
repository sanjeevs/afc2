class ChangeSupplyUsedAmountToFloat < ActiveRecord::Migration
  def change
    change_column :supply_consumptions, :used_amount, :float
  end
end
