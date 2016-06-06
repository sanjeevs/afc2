class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.string :name
      t.string :unique_name
      t.integer :left_amount
      t.integer :adjust
      t.string :unit
      t.text :comment

      t.timestamps null: false
    end
    add_index :supplies, :unique_name
  end
end
