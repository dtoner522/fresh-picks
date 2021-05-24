# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Extraveg.destroy_all
Vegbox.destroy_all
User.destroy_all

puts 'Creating Vegboxes...'
Vegbox.create!(name:'Up-front payment - 20 Weeks', price: 240)

puts 'Creating Users...'
User.create!(email:'admin@example.com', password: 'password')

puts 'Creating Extraveg...'
Extraveg.create!(name:'Rhubarb', description:'This is Product A, the most expensive fruit or veg per kilo', price: 0, quantity: 1, category:'A' )
Extraveg.create!(name:'Kale', description:'This is Product B, the mid-range price of fruit or veg per kilo', price: 0, quantity: 1, category:'B' )
Extraveg.create!(name:'Carrots', description:'This is Product C, the cheapest of the lot from the extra fruit and veg', price: 0, quantity: 1, category:'C' )

puts 'Finished!'