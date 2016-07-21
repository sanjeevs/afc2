class RemoveColumnLeftAmountFromSupplies < ActiveRecord::Migration
  def change
    remove_column :supplies, :left_amount
  end
end
