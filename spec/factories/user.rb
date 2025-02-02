FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    age { Faker::Number.between(from: 1, to: 99) }
    email { Faker::Internet.unique.free_email }
  end
end
