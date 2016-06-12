class Producer < ActiveRecord::Base

  before_validation { |producer| producer.unique_name = name.downcase.gsub(/\s+/, "") }
  validates :unique_name, presence: true, uniqueness: true, length: { maximum: 50 }

  # A producer has many production runs. 
  has_many :production_runs, dependent: :destroy

end
