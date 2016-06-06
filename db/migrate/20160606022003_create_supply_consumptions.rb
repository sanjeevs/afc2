class CreateSupplyConsumptions < ActiveRecord::Migration
  def change
    create_table :supply_consumptions do |t|
      t.references :supply, index: true, foreign_key: true
      t.integer :used_amount
      t.string :unit
      t.integer :production_run

      t.timestamps null: false
    end
  end
end
