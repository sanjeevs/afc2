class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :name
      t.string :unique_name
      t.string :contact_name
      t.string :address
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
    add_index :suppliers, :unique_name
  end
end
