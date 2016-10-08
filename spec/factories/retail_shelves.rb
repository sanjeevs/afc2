FactoryGirl.define do
  factory :retail_shelf do
    shelf_amount 1
    comment "MyText"
    updated_by "MyString"
    updated_on "2016-09-25"
    customer
    product
  end
end
