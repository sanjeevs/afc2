class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :unique_name
      t.integer :left_amount
      t.integer :adjust
      t.string :unit
      t.text :comment

      t.timestamps null: false
    end
    add_index :products, :unique_name
  end
end
