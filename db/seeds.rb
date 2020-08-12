# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "faker"

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating some restaurants..."
10.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    )
  puts "Restaurant with id #{restaurant.id} was created"

end

puts "Created #{Restaurant.count} restaurants"

# puts "Cleaning database..."
# Review.destroy_all

# puts "Creating some reviews..."
# 10.times do
#   review = Review.create(
#     content: Faker::Restaurant.review,
#     stars: rand(1..5)
#     restaurant: 
#     )
#   puts "Reviews with id #{restaurant.id} was created"

# end

# puts "Created #{Restaurant.count} restaurants"
