FactoryGirl.define do
  factory :supply do
    sequence(:name) { |n| "factory_supply #{n}" }
    unit "MyString"
    comment "MyText"
    trait :complex do
      after(:create) do |supply|
        FactoryGirl.create_list(:supply_consumption, 3, supply: supply)
        FactoryGirl.create_list(:supply_shipment, 3, supply: supply)
      end  
    end
  end
end
