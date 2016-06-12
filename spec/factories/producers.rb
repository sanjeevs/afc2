FactoryGirl.define do
  factory :producer do
    sequence(:name) { |n| "Producer_#{n}" }
    contact_name "Contact"
    address "MyString"
    email "MyString"
    phone "MyString"
  end
end
