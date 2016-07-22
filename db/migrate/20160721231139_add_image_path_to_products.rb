class AddImagePathToProducts < ActiveRecord::Migration
  def change
    add_column :products, :image_path, :string
    add_column :products, :net_weight_oz, :float
    add_column :products, :fluid_oz, :float
  end
end
