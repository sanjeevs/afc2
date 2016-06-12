require 'rails_helper'

RSpec.describe ProductionRun, type: :model do
  before { @production_run = FactoryGirl.create(:production_run) }
  subject { @production_run}

  it { should be_valid }

  describe 'when lot_name is not present' do
    before { @production_run.lot_name = " " }
    it { should_not be_valid }
  end


  describe "default value of unit" do
    it { expect(@production_run.unit).to eq("bottles") }
  end
end
