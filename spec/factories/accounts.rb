FactoryGirl.define do
  factory :account do
    sequence(:name) { |n| "account_name_#{n}" }
  end
end
