class CreateProductShipments < ActiveRecord::Migration
  def change
    create_table :product_shipments do |t|
      t.integer :order_amount
      t.integer :return_amount
      t.string :unit
      t.date :ship_date
      t.references :product, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
