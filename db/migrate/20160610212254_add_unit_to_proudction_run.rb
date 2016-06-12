class AddUnitToProudctionRun < ActiveRecord::Migration
  def change
    add_column :production_runs, :unit, :string
  end
end
