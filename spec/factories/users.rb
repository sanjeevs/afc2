FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "user_#{n}" }
    password "foobar"
    password_confirmation "foobar"
    factory :admin do
      admin true
    end
  end
end
