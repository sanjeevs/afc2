class Supply < ActiveRecord::Base
  before_save :default_values

  before_validation do |supply| 
    supply.unique_name = name.downcase.gsub(/\s+/, "")
  end

  validates :unique_name, presence: true, uniqueness: true, length: { maximum: 50 }
  validates :adjust, numericality: { only_interger: true, greater_than_or_equal_to: 0}, allow_blank: true
  validates :left_amount, numericality: { only_interger: true, greater_than_or_equal_to: 0}, allow_blank: true

  private
    def default_values
      self.left_amount ||= 0
      self.adjust ||= 0
    end

end
