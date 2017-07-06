FactoryGirl.define do
  factory :event do
    name              { Faker::Lorem.sentence(1) }
    description       { Faker::Lorem.sentence(40) }
    location          "Amsterdam"
    price             15
    capacity          10
    includes_food     false
    includes_drinks   true
    active            true
    user              { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
