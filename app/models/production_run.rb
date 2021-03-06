class ProductionRun < ActiveRecord::Base
  belongs_to :producer
  belongs_to :product
  validates :producer, presence: true
  validates :product, presence: true

  has_many :supply_consumptions, dependent: :destroy
  # A production run has many shipments. If no production run 
  # then no shipments.
  has_many :product_shipments, dependent: :destroy

  before_save :set_default
  validates :lot_name, presence: true, length: { maximum: 50 }
  validates :mfgd_amount, numericality: { only_interger: true, greater_than_or_equal_to: 0}, allow_blank: true


  def select_production_run(lot_name, product_id)
    ProductionRun.find_by(lot_name: lot_name, product_id: product_id)
  end

  private
  def set_default
    self.mfgd_amount ||= 0
  end
end
