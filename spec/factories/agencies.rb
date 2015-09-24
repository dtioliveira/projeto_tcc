FactoryGirl.define do
  factory :agency do
    association :city
    association :bank
    number 1762
    digit 2
  end
end
