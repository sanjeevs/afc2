class Product < ActiveRecord::Base

  before_save :default_values

  before_validation do |product| 
    product.unique_name = name.downcase.gsub(/\s+/, "")
  end

  validates :unique_name, presence: true, uniqueness: true, length: { maximum: 50 }
  validates :adjust, numericality: { only_interger: true, greater_than_or_equal_to: 0}, allow_blank: true
  validates :left_amount, numericality: { only_interger: true, greater_than_or_equal_to: 0}, allow_blank: true

  # A product has many supplies shipment. If no product then supplies 
  # continue to remain.
  has_many :supply_shipments
  # A product has many shipments. If no product then no shipments.
  has_many :product_shipments, dependent: :destroy
  # A product is produced from multiple runs. If no product then no runs.
  has_many :production_runs, dependent: :destroy

  private
    def default_values
      self.left_amount ||= 0
      self.adjust ||= 0
    end
end
