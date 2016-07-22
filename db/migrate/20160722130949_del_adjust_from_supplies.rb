class DelAdjustFromSupplies < ActiveRecord::Migration
  def change
    remove_column :supplies, :adjust
  end
end
