# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
#Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0678990034", category:"french" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0618194556", category:"japanese" }
le_petit_nice =  { name: "Le petit nice", address: "pas loin", phone_number: "0625246777", category:"italian"  }
pizza =  { name: "Pizza", address: "A droite", phone_number: "0690904554", category:"chinese" }
pizza_hut =  { name: "Pizza Hut", address: "au fond a droite", phone_number: "0627249445", category:"belgian" }


[ dishoom, pizza_east,le_petit_nice,pizza,pizza_hut ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
