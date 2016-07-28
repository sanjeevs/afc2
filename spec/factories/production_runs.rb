FactoryGirl.define do
  factory :production_run do
    sequence(:lot_name) { |n| "Lot Name #{n}" }
    sequence(:invoice_number) { |n| "Invoice Number #{n}" }
    producer 
    product 
    mfgd_amount { rand(1..100) } 
    mfgd_date "2016-06-05"
    expiry_date "2016-06-05"
    trait :complex do
      after(:create) do |production_run, evaluator|
        FactoryGirl.create_list(:supply_consumption, 3, production_run: production_run)
        FactoryGirl.create_list(:product_shipment, 3, production_run: production_run)
      end
    end
  end

end
