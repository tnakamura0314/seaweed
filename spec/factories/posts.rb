FactoryBot.define do
  factory :post do
    text {Faker::Food.fruits}
    checked {Faker::Number.between(from: 0, to: 1)}
    association :user
  end
end
