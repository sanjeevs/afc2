class AddCategoryRefToCustomers < ActiveRecord::Migration
  def change
    add_reference :customers, :category, index: true, foreign_key: true
  end
end
