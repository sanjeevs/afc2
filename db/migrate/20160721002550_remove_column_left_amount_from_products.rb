class RemoveColumnLeftAmountFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :left_amount
  end
end
