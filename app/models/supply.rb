class Supply < ActiveRecord::Base
  attr_accessor :adjust

  before_validation do |supply| 
    supply.unique_name = name.downcase.gsub(/\s+/, "")
  end

  validates :unique_name, presence: true, uniqueness: true, length: { maximum: 50 }

  # A supply has many consumption in a production run. If there is no
  # supply then there is no consumption.
  has_many :supply_consumptions, dependent: :destroy

  # A supply has many shipments. If suppy is not there then there cannot
  # be any shipments.
  has_many :supply_shipments, dependent: :destroy

  def total_consumptions
    supply_consumptions.sum(:used_amount)
  end

  def total_orders
    supply_shipments.sum(:order_amount)
  end

  def left_amount
    left = total_orders - total_consumptions
    if(left < 0)
      @adjust = -1 * left
      left = 0
    else
      @adjust = 0
    end
    return left
  end

end
