require 'rails_helper'

RSpec.describe ProductionRun, type: :model do
  before { @production_run = FactoryGirl.create(:production_run) }
  subject { @production_run}

  it { should be_valid }

  describe 'when lot_name is not present' do
    before { @production_run.lot_name = " " }
    it { should_not be_valid }
  end

  # Duplicate lot names are allowed.
  describe 'when lot_name is not unique' do
    before { @dup_production_run = @production_run.dup } 
    it { @dup_production_run.should be_valid }
  end

end
