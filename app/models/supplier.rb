class Supplier < ActiveRecord::Base
  before_validation { |supplier| supplier.unique_name = name.downcase.gsub(/\s+/, "") }
  validates :unique_name, presence: true, uniqueness: true, length: { maximum: 50 }

  has_many :supply_shipments, dependent: :destroy
end
