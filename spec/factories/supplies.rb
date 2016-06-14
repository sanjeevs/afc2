FactoryGirl.define do
  factory :supply do
    sequence(:name) { |n| "supply #{n}" }
    unit "MyString"
    comment "MyText"
  end
end
