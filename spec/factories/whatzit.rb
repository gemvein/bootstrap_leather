FactoryGirl.define do
  factory :whatzit do
    name { Faker::Name.name }
    description { Faker::Lorem.sentence }
  end
end
