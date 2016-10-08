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

  private
  def set_defaults
    self.shelf_amount ||= 0
  end
end
