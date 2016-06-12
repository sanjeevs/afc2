require 'rails_helper'

RSpec.describe Supplier, type: :model do
 before { @supplier = FactoryGirl.create(:supplier) }
  subject { @supplier }

  it { should be_valid }

  describe 'when name is not present' do
    before { @supplier.name = " " }
    it { should_not be_valid }
  end

  describe 'when name is too long' do
    before { @supplier.name = 'a' * 51 }
    it { should_not be_valid }
  end

  describe 'when name has different case' do
    before do
      @supplier_with_same_name = @supplier.dup
      @supplier_with_same_name.name = @supplier.name.upcase
      @supplier_with_same_name.save
    end
    it "is not valid" do
      expect(@supplier_with_same_name).to_not be_valid
    end
  end

  describe 'when name has extra space' do
    before do
      @supplier_with_same_name = @supplier.dup
      @supplier_with_same_name.name = @supplier.name + "  " * 30
      @supplier_with_same_name.save
    end
    it "is not valid" do
      expect(@supplier_with_same_name).to_not be_valid
    end
  end

end
