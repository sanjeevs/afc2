class Product < ActiveRecord::Base

  before_save :default_values
  attr_accessor :adjust

  before_validation do |product| 
    if name
      product.unique_name = name.downcase.gsub(/\s+/, "")
    else
      product.unique_name = nil
    end
  end

  validates :unique_name, presence: true, uniqueness: true, length: { maximum: 50 }

  # A product has many supplies shipment. If no product then supplies 
  # continue to remain.
  has_many :supply_shipments
  
  # A product is produced from multiple runs. If no product then no runs.
  has_many :production_runs, dependent: :destroy
  def total_shipments
    sum = 0
    production_runs.each do |production_run|
      sum += production_run.product_shipments.sum(:order_amount)
    end
    sum
  end

  def total_returns
    sum = 0
    production_runs.each do |production_run|
      sum += production_run.product_shipments.sum(:return_amount)
    end
    sum
  end

  def total_produced
    production_runs.sum(:mfgd_amount)
  end

  def left_amount
    left = total_produced - total_shipments + total_returns
    if left < 0
      @adjust = -1 * left
      left = 0
    else 
      @adjust = 0
    end
    return left
  end

  def adjust_to_comment
    if adjust == 0
      return ""
    else
      return "Missing #{adjust} bottles."
    end
  end
  private
    def default_values
      self.unit ||= "bottles"
    end
end
