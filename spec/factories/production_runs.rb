FactoryGirl.define do
  factory :production_run do
    sequence(:lot_name) { |n| "Lot Name #{n}" }
    producer 
    product 
    mfgd_amount 1
    mfgd_date "2016-06-05"
    expiry_date "2016-06-05"
  end
end
