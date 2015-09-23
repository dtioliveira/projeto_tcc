require 'rails_helper'

describe Bank do
  it 'is valid with a name' do
    bank = build(:bank)
    expect(bank).to be_valid
  end

  it 'is invalid without name' do
    bank = build(:bank, name: nil)
    bank.valid?
    expect(bank.errors[:name]).to include("can't be blank")
  end

  it 'is invalid with a duplicate name' do
    create(:bank)
    bank = build(:bank)
    bank.valid?
    expect(bank.errors[:name]).to include('has already been taken')
  end
end
