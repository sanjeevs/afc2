class Supply < ActiveRecord::Base
  before_save :default_values

  before_validation do |supply| 
    supply.unique_name = name.downcase.gsub(/\s+/, "")
  end

  validates :unique_name, presence: true, uniqueness: true, length: { maximum: 50 }
  validates :adjust, numericality: { only_interger: true, greater_than_or_equal_to: 0}, allow_blank: true
  validates :left_amount, numericality: { only_interger: true, greater_than_or_equal_to: 0}, allow_blank: true

  # A supply has many consumption in a production run. If there is no
  # supply then there is no consumption.
  has_many :supply_consumptions, dependent: :destroy

  def total_consumptions
    supply_consumptions.sum(:used_amount)
  end

  private
    def default_values
      self.left_amount ||= 0
      self.adjust ||= 0
    end

end
