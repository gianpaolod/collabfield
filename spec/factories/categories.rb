FactoryBot.define do
  factory :category do
    sequence(:name) { |n| "name#{n}" }
    sequence(:branch) { |n| "name#{n}" }
  end
end