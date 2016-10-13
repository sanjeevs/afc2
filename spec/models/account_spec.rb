require 'rails_helper'

RSpec.describe Account, type: :model do
  before { @account = FactoryGirl.create(:account) }
  subject { @account }
  it { should be_valid }
end
