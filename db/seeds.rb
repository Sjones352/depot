# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

Product.create!([{
  title: "Ant-Man",
  description: "Armed with the astonishing ability to shine",
  image_url: "ruby.png",
  price: 10,
  created_at: 5.days.ago,
  updated_at: 2.days.ago,
  supplier: "Amazon",
  color: "blue"
},
{
  title: "Pixels",
  description: "Armed with the astonishing ability to glow in the dark",
  image_url: "ruby.png",
  price: 11,
  created_at: 4.days.ago,
  updated_at: 3.days.ago,
  supplier: "Amazon",
  color: "white"
},
{
  title: "Terminator Genisys",
  description: "Armed with the astonishing ability to shine bright like a diamond",
  image_url: "ruby.png",
  price: 12,
  created_at: 10.days.ago,
  updated_at: 5.days.ago,
  supplier: "Amazon",
  color: "red"
}])

puts "Created #{Product.count} products"
