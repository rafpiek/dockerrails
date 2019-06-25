p 'Creating cars'
if Car.all.size.zero?
    Car.create!(name: 'Kia', color: 'red')
    Car.create!(name: 'Opel', color: 'blue')
end