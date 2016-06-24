class RemoveProductFromProductShipments < ActiveRecord::Migration
  def change
    remove_reference :product_shipments, :product, index: true
  end
end
