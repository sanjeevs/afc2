class ChangeIndexForRetailShelf < ActiveRecord::Migration
  def change
    remove_index :retail_shelves, column: :customer_id
    remove_index :retail_shelves, column: :product_id
    add_index :retail_shelves, [:customer_id, :product_id], unique: true
  end
end
