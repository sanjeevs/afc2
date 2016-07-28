class ProductShipment < ActiveRecord::Base
  attr_accessor :lot_name, :product_id
  belongs_to :production_run
  belongs_to :customer
  validates :production_run, presence: true
  validates :customer, presence: true

  before_save :set_defaults

  validates :order_amount, numericality: { only_interger: true, greater_than_or_equal_to: 0}, allow_blank: true
  
  validates :return_amount, numericality: { only_interger: true, greater_than_or_equal_to: 0}, allow_blank: true
  private
  def set_defaults
    self.order_amount ||= 0
    self.return_amount ||= 0
  end
end
