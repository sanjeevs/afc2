class AddInvoiceNumberToProductionRun < ActiveRecord::Migration
  def change
    add_column :production_runs, :invoice_number, :string
  end
end
