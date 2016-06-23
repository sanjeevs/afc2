FactoryGirl.define do
  factory :product do
    sequence(:name) { |n| "Factory Product #{n}" }
    left_amount 1
    unit "Bottles"
    comment "MyText"
  end
end
