FactoryGirl.define do
  factory :product do
    sequence(:name) { |n| "Product #{n}" }
    left_amount 1
    unit "MyString"
    comment "MyText"
  end
end
