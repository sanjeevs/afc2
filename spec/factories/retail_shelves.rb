FactoryGirl.define do
  factory :retail_shelf do
    shelf_amount 1
    comment "MyText"
    checked_by "MyString"
    checked_on "2016-09-25"
    customer
    product
  end
end
