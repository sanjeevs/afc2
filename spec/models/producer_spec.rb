require 'rails_helper'

RSpec.describe Producer, type: :model do
  before { @producer = FactoryGirl.create(:producer) }
  subject { @producer }

  it { should be_valid }

  describe 'when name is not present' do
    before { @producer.name = " " }
    it { should_not be_valid }
  end

  describe 'when name is too long' do
    before { @producer.name = 'a' * 51 }
    it { should_not be_valid }
  end

  describe 'when name has different case' do
    before do
      @producer_with_same_name = @producer.dup
      @producer_with_same_name.name = @producer.name.upcase
      @producer_with_same_name.save
    end
    it "is not valid" do
      expect(@producer_with_same_name).to_not be_valid
    end
  end

  describe 'when name has extra space' do
    before do
      @producer_with_same_name = @producer.dup
      @producer_with_same_name.name = @producer.name + "  " * 30
      @producer_with_same_name.save
    end
    it "is not valid" do
      expect(@producer_with_same_name).to_not be_valid
    end
  end
end
