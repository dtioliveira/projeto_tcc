Bank.create!([ {name: 'Banco do Brasil'}, {name: 'Bradesco'},
{name: 'HSBC'} ]) if Bank.count == 0

state = State.create!(name: 'São Paulo', abbreviation: 'SP') if State.count == 0
city = state.cities.create!(name: 'Itararé') if City.count == 0
agency = Agency.create!(city: city, bank: Bank.first, number: 1561, digit: 0) if Agency.count == 0
customer = Customer.create!(full_name: 'John Doe', birthday: '10/10/1992', account: 24392, digit: 2, agency: agency) if Customer.count == 0
