require 'rails_helper'

describe Bank do
  it 'is valid with a name' do
    bank = Bank.new(name: 'Banco do Brasil')
    expect(bank).to be_valid
  end

  it 'is invalid without name' do
    bank = Bank.new(name: nil)
    bank.valid?
    expect(bank.errors[:name]).to include("can't be blank")
  end

  it 'is invalid with a duplicate name' do
    Bank.create(name: 'Banco do Brasil')

    bank = Bank.new(name: 'Banco do Brasil')
    bank.valid?
    expect(bank.errors[:name]).to include('has already been taken')
  end
end
