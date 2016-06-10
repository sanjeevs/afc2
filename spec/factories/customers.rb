FactoryGirl.define do
  factory :customer do
    sequence(:name) { |n| "Customer_#{n}" }
    sequence(:contact_name) { |n| "contact_name_#{n}" }
    address "customer address"
    email "customer email"
    phone "MyString"
  end
end
