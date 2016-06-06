class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :unique_name
      t.string :contact_name
      t.string :address
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
    add_index :customers, :unique_name
  end
end
