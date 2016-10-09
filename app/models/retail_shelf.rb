class RetailShelf < ActiveRecord::Base
  belongs_to :customer
  validates :customer, presence: true
  belongs_to :product
  validates :product, presence: true
  before_save :set_defaults
 
  def summary_comment
    if(comment && comment.size() > 50) 
      comment[0..50] + ".." 
    else
       comment
    end
  end

  def product_shipments
    customer.product_shipped(product_id)
  end

  def total_ordered
    customer.total_product_ordered(product_id)
  end

  private
  def set_defaults
    self.shelf_amount ||= 0
    self.checked_on ||= Date.today
  end
end
