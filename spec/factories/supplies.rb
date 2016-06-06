FactoryGirl.define do
  factory :supply do
    name "MyString"
    unique_name "MyString"
    left_amount 1
    adjust 1
    unit "MyString"
    comment "MyText"
  end
end
