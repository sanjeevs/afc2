require 'rails_helper'

RSpec.describe Supply, type: :model do
 before { @supply = FactoryGirl.create(:supply) }
  subject { @supply }

  it { should be_valid }

  describe 'when name is not present' do
    before { @supply.name = " " }
    it { should_not be_valid }
  end

  describe 'when name is too long' do
    before { @supply.name = 'a' * 51 }
    it { should_not be_valid }
  end

  describe 'when name has different case' do
    before do
      @supply_with_same_name = @supply.dup
      @supply_with_same_name.name = @supply.name.upcase
      @supply_with_same_name.save
    end
    it "is not valid" do
      expect(@supply_with_same_name).to_not be_valid
    end
  end

  describe 'when name has extra space' do
    before do
      @supply_with_same_name = @supply.dup
      @supply_with_same_name.name = @supply.name + "  " * 30
      @supply_with_same_name.save
    end
    it "is not valid" do
      expect(@supply_with_same_name).to_not be_valid
    end
  end
end
