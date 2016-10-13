FactoryGirl.define do
  factory :category do
    sequence(:name) { |n| "category_name_#{n}" }
  end
end
