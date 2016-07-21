FactoryGirl.define do
  factory :product do
    sequence(:name) { |n| "Factory Product #{n}" }
    left_amount { rand(1..10) }
    unit "Bottles"
    comment "MyText"

    trait :complex do
      after(:create) do |product|
        FactoryGirl.create_list(:production_run, 3, :complex, product: product)
      end  
    end
  end
end
