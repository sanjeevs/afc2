FactoryGirl.define do
  factory :producer do
    sequence(:name) { |n| "my producer #{n}" }
    contact_name "Contact"
    address "MyString"
    email "MyString"
    phone "MyString"
  end
end
