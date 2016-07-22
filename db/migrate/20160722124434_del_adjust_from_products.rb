class DelAdjustFromProducts < ActiveRecord::Migration
  def change
    remove_column :products, :adjust
  end
end
