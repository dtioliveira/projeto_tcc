FactoryGirl.define do
  factory :city do
    name "City 1"
    association :state
  end

end
