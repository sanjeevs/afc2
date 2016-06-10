require 'rails_helper'

RSpec.describe Product, type: :model do
  before { @product = FactoryGirl.create(:product) }
  subject { @product }
  
  it { should be_valid }
  describe 'when name is not present' do
    before { @product.name = " " }
    it { should_not be_valid }
  end

  describe 'when name is too long' do
    before { @product.name = 'a' * 51 }
    it { should_not be_valid }
  end

  describe 'when name has different case' do
    before do
      @product_with_same_name = @product.dup
      @product_with_same_name.name = @product.name.upcase
      @product_with_same_name.save
    end
    it "is not valid" do
      expect(@product_with_same_name).to_not be_valid
    end
  end

  describe 'when name has extra space' do
    before do
      @product_with_same_name = @product.dup
      @product_with_same_name.name = @product.name + "  " * 30
      @product_with_same_name.save
    end
    it "is not valid" do
      expect(@product_with_same_name).to_not be_valid
    end
  end

  describe "default value of left_amount" do
    before do
      @product.left_amount = ""
      @product.save
    end
    it " is zero" do
      expect(@product.left_amount).to be_zero 
    end
  end

  describe "blank value of left_amount" do
    before do
      @product.left_amount = " " * 20
      @product.save
    end
    it " is zero" do
      expect(@product.left_amount).to be_zero 
    end
  end
  
  describe "blank value of adjust" do
    before do
      @product.adjust = " " * 20
      @product.save
    end
    it " is zero" do
      expect(@product.adjust).to be_zero 
    end
  end
  
  describe 'when adjust is not integer' do
    before { @product.adjust = 'a' }
    it { should_not be_valid }
  end

  describe 'when left_amount is not integer' do
    before { @product.left_amount = 'a' }
    it { should_not be_valid }
  end
  
  describe 'when left_amount is negative integer' do
    before { @product.left_amount = -1 }
    it { should_not be_valid }
  end
end
