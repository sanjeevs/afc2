FactoryGirl.define do
  factory :product do
    sequence(:name) { |n| "Factory Product #{n}" }
    unit "Bottles"
    comment "MyText"

    trait :complex do
      after(:create) do |product|
        FactoryGirl.create_list(:production_run, 3, :complex, product: product)
      end  
    end
  end
end
