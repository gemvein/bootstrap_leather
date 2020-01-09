FactoryBot.define do
  factory :doo_dad do
    name { Faker::Name.name }
    body { Faker::Lorem.sentence }
  end
end
