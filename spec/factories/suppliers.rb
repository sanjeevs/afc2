FactoryGirl.define do
  factory :supplier do
    sequence(:name) { |n| "Supplier #{n}" }
    contact_name "MyString"
    address "MyString"
    email "MyString"
    phone "MyString"
  end
end
