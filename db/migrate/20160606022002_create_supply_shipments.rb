class CreateSupplyShipments < ActiveRecord::Migration
  def change
    create_table :supply_shipments do |t|
      t.integer :order_amount
      t.integer :return_amount
      t.string :unit
      t.date :ship_date
      t.references :product, index: true, foreign_key: true
      t.references :supplier, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
