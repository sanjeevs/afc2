class ProductionRun < ActiveRecord::Base
  belongs_to :producer
  belongs_to :product
end
