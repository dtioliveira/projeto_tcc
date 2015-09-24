require 'rails_helper'

describe Agency do
  it 'is valid with a number, digit, city and bank' do
    agency = build(:agency)
    agency.valid?
    expect(agency).to be_valid
  end

  it 'is invalid without a number' do
    agency = build(:agency, number: nil)
    agency.valid?
    expect(agency.errors[:number]).to include("can't be blank")
  end

  it 'is invalid without a digit' do
    agency = build(:agency, digit: nil)
    agency.valid?
    expect(agency.errors[:digit]).to include("can't be blank")
  end

  it 'is invalid without a city' do
    agency = build(:agency, city_id: nil)
    agency.valid?
    expect(agency.errors[:city_id]).to include("can't be blank")
  end

  it 'is invalid without a bank' do
    agency = build(:agency, bank_id: nil)
    agency.valid?
    expect(agency.errors[:bank_id]).to include("can't be blank")
  end

  it 'is invalid number with a string' do
    agency = build(:agency, number: '2342s')
    agency.valid?
    expect(agency.errors[:number]).to include("is not a number")
  end

  it 'is valid number with a numeric' do
    agency = build(:agency, number: '2342')
    agency.valid?
    expect(agency).to be_valid
  end

  it 'is invalid digit with a string' do
    agency = build(:agency, digit: '2342s')
    agency.valid?
    expect(agency.errors[:digit]).to include("is not a number")
  end

  it 'is valid digit with a numeric' do
    agency = build(:agency, digit: '2342')
    agency.valid?
    expect(agency).to be_valid
  end
end
