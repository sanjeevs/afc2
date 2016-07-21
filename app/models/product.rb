class Product < ActiveRecord::Base

  before_save :default_values

  before_validation do |product| 
    if name
      product.unique_name = name.downcase.gsub(/\s+/, "")
    else
      product.unique_name = nil
    end
  end

  validates :unique_name, presence: true, uniqueness: true, length: { maximum: 50 }
  validates :adjust, numericality: { only_interger: true, greater_than_or_equal_to: 0}, allow_blank: true

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
    total_produced - total_shipments + total_returns - adjust
  end

  private
    def default_values
      self.adjust ||= 0
      self.unit ||= "bottles"
    end
end
