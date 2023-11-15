# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0674855856", category: "chinese"}
potato = {name: "Potato", address: "7 Boundary St, paris", phone_number: "067465856", category: "belgian"}
macdo = {name: "Macdo", address: "7 Boundary St, st tropez", phone_number: "067465856", category: "french"}
burgerking = {name: "Burger King", address: "7 Boundary St, new york", phone_number: "067465856", category: "belgian"}
pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "067444565856", category: "italian"}

[dishoom, macdo, potato, pizza_east].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
