class SupplyShipment < ActiveRecord::Base
  belongs_to :supply
  belongs_to :supplier

  validates :supply, presence: true
  validates :supplier, presence: true

  before_save :set_defaults

  validates :order_amount, numericality: { only_interger: true, greater_than_or_equal_to: 0}, allow_blank: true
  
  private
  def set_defaults
    self.order_amount ||= 0
  end
end
