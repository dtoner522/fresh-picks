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
Order.destroy_all
User.destroy_all

puts 'Creating Vegboxes...'
Vegbox.create!(name:'Up-front payment - 20 Weeks', price: 240)

puts 'Creating Users...'
User.create!(email:'admin@example.com', password: 'password')

puts 'Creating Extraveg...'
Extraveg.create!(name:'Carrots', description:'A shit-ton of carrots', price: 0, quantity: 1 )

puts 'Finished!'