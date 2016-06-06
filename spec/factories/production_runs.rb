FactoryGirl.define do
  factory :production_run do
    lot_name "MyString"
    producer nil
    product nil
    mfgd_amount 1
    mfgd_date "2016-06-05"
    expiry_date "2016-06-05"
  end
end
