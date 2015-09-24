FactoryGirl.define do
  factory :customer do
    full_name { Faker::Name.full_name }
    birthday "2015-09-23"
    account 31342
    digit 1
    association :agency
  end
end
