class RenameColumnInRetailShelve < ActiveRecord::Migration
  def change
    rename_column(:retail_shelves, :updated_by, :checked_by)
  end
end
