# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
manoir = { name: "Le Manoir", address: "2 Bongdon Road, London E2 5FO", category: "french" }
cheesetown = { name: "Cheese Town", address: "50 Boloney Street, Hackney, E4 3DL", category: "belgian" }
pizzahut = { name: "Pizza Hut", address: "10 Glorp Park, London E2 1CL", category: "italian" }

[ dishoom, pizza_east, manoir, cheesetown, pizzahut ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"