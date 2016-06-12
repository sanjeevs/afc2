class SupplyConsumption < ActiveRecord::Base
  belongs_to :supply
  validates :supply, presence: true

  before_save :set_defaults

  private
  def set_defaults
    self.used_amount ||= 0
  end
end
