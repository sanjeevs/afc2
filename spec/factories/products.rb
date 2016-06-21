FactoryGirl.define do
  factory :product do
    sequence(:name) { |n| "Product #{n}" }
    left_amount 1
    unit "Bottles"
    comment "MyText"
  end
end
