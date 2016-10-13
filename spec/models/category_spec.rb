require 'rails_helper'

RSpec.describe Category, type: :model do
  before { @category = FactoryGirl.create(:category) }
  subject { @category }
  it { should be_valid }
end
