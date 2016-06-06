class CreateProducers < ActiveRecord::Migration
  def change
    create_table :producers do |t|
      t.string :name
      t.string :unique_name
      t.string :contact_name
      t.string :address
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
    add_index :producers, :unique_name
  end
end
