class Customer < ActiveRecord::Base
  before_validation { |customer| customer.unique_name = name.downcase.gsub(/\s+/, "") }
  validates :unique_name, presence: true, uniqueness: true, length: { maximum: 50 }

  # A customer has many product shiptments. If customer is deleted then
  # there are no shipments.
  has_many :product_shipments, dependent: :destroy
  has_many :retail_shelves, dependent: :destroy

  def product_shipped(product_id)
    shipments = [] 
    product_shipments.each do |shipment|
      shipments << shipment if shipment.production_run.product.id == product_id
    end
    return shipments
  end

  # FIXME: Should use sql sum instead.
  def total_product_ordered(product_id)
    my_shipments = product_shipped(product_id)
    my_shipments.reduce(0){ |sum, entry| sum + entry.order_amount }
  end

end
