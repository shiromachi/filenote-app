FactoryBot.define do
  factory :filenote do
    title  { Faker::Lorem.words }
    memo   { Faker::Lorem.sentence }
  end
end
