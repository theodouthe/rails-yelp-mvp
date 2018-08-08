# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Pizza maria',
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '06 79 87 65 45',
    category:      'chinese'
  },
  {
    name:         'Pizza Toto',
    address:      '3 rue du lavoir, 40230 Paris',
    phone_number:  '06 79 87 65 45',
    category:      'italian'
  },
    {
    name:         'Pizza Robert',
    address:      '3 rue du cloitre, 50230 Taris',
    phone_number:  '06 79 87 00 45',
    category:      'japanese'
  },
    {
    name:         'Pizza Gerard',
    address:      '3 rue de la soif, 70230 Nice',
    phone_number:  '06 79 87 65 00',
    category:      'french'
  },
    {
    name:         'La frite a Dudulle',
    address:      '3 rue de la faim, 67230 Lille',
    phone_number:  '06 01 00 65 00',
    category:      'belgian'
  },
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
