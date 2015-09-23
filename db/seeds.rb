Bank.create!([ {name: 'Banco do Brasil'}, {name: 'Bradesco'},
{name: 'HSBC'} ]) if Bank.count == 0

state = State.create!(name: 'São Paulo', abbreviation: 'SP') if State.count == 0
city = state.cities.create!(name: 'Itararé') if City.count == 0
agency = Agency.create!(city: city, bank: Bank.first) if Agency.count == 0
