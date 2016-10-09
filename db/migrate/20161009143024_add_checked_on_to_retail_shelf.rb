class AddCheckedOnToRetailShelf < ActiveRecord::Migration
  def change
    add_column :retail_shelves, :checked_on, :date
  end
end
