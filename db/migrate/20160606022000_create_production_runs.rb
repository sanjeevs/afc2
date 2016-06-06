class CreateProductionRuns < ActiveRecord::Migration
  def change
    create_table :production_runs do |t|
      t.string :lot_name
      t.references :producer, index: true, foreign_key: true
      t.references :product, index: true, foreign_key: true
      t.integer :mfgd_amount
      t.date :mfgd_date
      t.date :expiry_date

      t.timestamps null: false
    end
  end
end
