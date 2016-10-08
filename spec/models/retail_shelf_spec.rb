require 'rails_helper'

RSpec.describe RetailShelf, type: :model do
  before { @retail_shelf = FactoryGirl.create(:retail_shelf) }
  subject { @retail_shelf }

  it { should be_valid }

  describe "shelf amount default value" do
    before do
      @retail_shelf.shelf_amount = nil
      @retail_shelf.save
    end
    it { expect(@retail_shelf.shelf_amount).to eql(0) }
  end

  describe  "associations" do
    it "shelf amount with duplicate customer and product" do
      copy_shelf = @retail_shelf.dup
      expect{ copy_shelf.save!(validate: false) }.to raise_error(ActiveRecord::RecordNotUnique)
    end

    it "customer destroy should delete the retail shelf" do
      customer = Customer.find(@retail_shelf.customer_id)
      retail_shelves = customer.retail_shelves
      customer.destroy
      retail_shelves.each do |shelf|
        RetailShelf.find_by_id(shelf.id).should be_nil
      end
    end
    
    it "product destroy should delete the retail shelf" do
      product = Product.find(@retail_shelf.product_id)
      retail_shelves = product.retail_shelves
      product.destroy
      retail_shelves.each do |shelf|
        RetailShelf.find_by_id(shelf.id).should be_nil
      end
    end
  end
end
