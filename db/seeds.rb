# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Seeding Offers................"

10.times do
  offer = Offer.create(
    address: Faker::Address.street_address,
    price: Faker::Number.decimal(l_digits: 2),
    description: Faker::String.random,
    capacity: Faker::Number.between(from: 1, to: 10),
    title: Faker::String.random(length: [0, 12]),
    state: Faker::Address.state_abbr,
    city: Faker::Address.city,
    user_id: 1
  )
  puts "offer #{offer.id} is created"
end

puts "done"
