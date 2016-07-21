require 'rails_helper'

RSpec.describe Product, type: :model do
  before { @product = FactoryGirl.create(:product, :complex) }
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

  describe "total produced amount" do
    before do
      @total_mfgd_amount = 0
      @product.production_runs.each do |pr|
        @total_mfgd_amount += pr.mfgd_amount
      end
    end
    it "should sum all the mfgd amounts" do
      expect(@product.total_produced).to eql(@total_mfgd_amount)
    end
  end

  describe "total shipments" do
    before do
      @total_shipment_amount = 0
      @product.production_runs.each do |production_run|
        production_run.product_shipments.each do |product_shipment|
          @total_shipment_amount += product_shipment.order_amount
        end
      end
    end
    it "should sum all the shipment amount" do
      expect(@total_shipment_amount).not_to eql(0)
      expect(@product.total_shipments).to eql(@total_shipment_amount)
    end
  end

  describe "total returns" do
    before do
      @total_return_amount = 0
      @product.production_runs.each do |production_run|
        production_run.product_shipments.each do |product_shipment|
          @total_return_amount += product_shipment.return_amount
        end
      end
    end
    it "should sum all the shipment amount" do
      expect(@total_return_amount).not_to eql(0)
      expect(@product.total_returns).to eql(@total_return_amount)
    end
  end
end
