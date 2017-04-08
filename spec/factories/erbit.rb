FactoryGirl.define do
  factory :erbit do
    name { Faker::Name.name }
    description { Faker::Lorem.sentence }
  end
end
