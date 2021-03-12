FactoryBot.define do
  factory :user do
    nickname              {Faker::Name.name}
    email                 {Faker::Internet.free_email}
    password              {"111aaa"}
    password_confirmation {password}
    birthday              {Faker::Date.birthday}
    sex_id {Faker::Number.between(from: 2, to: 4)}
    position_id {Faker::Number.between(from: 2, to: 9)}
    household_id {Faker::Number.between(from: 2, to: 7)}
  end
end