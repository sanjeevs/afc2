FactoryGirl.define do
  factory :supply_consumption do
    supply nil
    used_amount 1
    unit "MyString"
    production_run 1
  end
end
