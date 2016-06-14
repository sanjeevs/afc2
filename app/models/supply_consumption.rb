class SupplyConsumption < ActiveRecord::Base
  belongs_to :supply
  belongs_to :production_run

  validates :supply, presence: true
  validates :production_run, presence: true

  before_save :set_defaults

  private
  def set_defaults
    self.used_amount ||= 0
  end
end
