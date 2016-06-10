class Customer < ActiveRecord::Base
  before_validation { |customer| customer.unique_name = name.downcase.gsub(/\s+/, "") }
  validates :unique_name, presence: true, uniqueness: true, length: { maximum: 50 }

  # A customer has many product shiptments. If customer is deleted then
  # there are no shipments.
  has_many :product_shipments, dependent: :destroy

end
