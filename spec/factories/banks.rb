FactoryGirl.define do
  factory :bank do
    name "Banco do Brasil"
  end

  factory :invalid_bank do
    name :nil
  end
end
