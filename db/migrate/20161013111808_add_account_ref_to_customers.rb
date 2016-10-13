class AddAccountRefToCustomers < ActiveRecord::Migration
  def change
    add_reference :customers, :account, index: true, foreign_key: true
  end
end
