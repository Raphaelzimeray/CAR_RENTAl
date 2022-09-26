# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'faker'

puts "Cleaning database"

Car.destroy_all

puts 'Creating 10 cars...'
volvo = Car.new(
brand: "Volvo",
year: "2019",
engine: "1.5 T3 essence",
color: "grey",
car_type: "break",
)
file = URI.open('https://cdn.motor1.com/images/mgl/xMXjw/s1/volvo-v40.webp')
volvo.photos.attach(io: file, filename: 'volvo.webp', content_type: 'image/webp')
volvo.save!
puts"#{volvo.brand} has been created"

audi = Car.new(
  brand: "Audi",
  year: "2020",
  engine: "V8 4.0 TFSI",
  color: "nardo grey",
  car_type: "break",
)
file = URI.open('https://sport-auto.ch/essais/wp-content/uploads/2020/09/Audi-RS6-C8-112.jpg')
audi.photos.attach(io: file, filename: 'audi.jpg', content_type: 'audi/jpg')
audi.save!
puts "#{audi.brand} has been created"


puts 'Finished!'
