FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "test#{n}" }
    sequence(:email) { |n| "test#{n}@test.com" }
    password { '123456789' }
    password_confirmation { '123456789' } 
  end
end
