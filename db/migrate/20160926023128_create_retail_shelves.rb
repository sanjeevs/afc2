class CreateRetailShelves < ActiveRecord::Migration
  def change
    create_table :retail_shelves do |t|
      t.integer :shelf_amount
      t.text :comment
      t.string :updated_by
      t.date :updated_on
      t.references :customer, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
