FactoryGirl.define do
  factory :supply do
    sequence(:name) { |n| "factory_supply #{n}" }
    unit "MyString"
    comment "MyText"
  end
end
