FactoryBot.define do
  factory :food do
    name {Faker::Food.vegetables} 
    number {Faker::Number.between(from: 300, to: 999_999_999)}
    quantity_id {Faker::Number.between(from: 2, to: 18)}
    deadline {"2021-01-01"}
    status {0}
    association :user
  end
end