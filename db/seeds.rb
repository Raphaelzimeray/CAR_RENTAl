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

Booking.destroy_all

Car.destroy_all

puts 'Creating 10 cars...'
volvov40 = Car.new(
brand: "Volvo",
year: 2019,
engine: "1.5 T3 152HP",
color: "grey",
car_type: "Break",
model: "v40",
address: "7 rue beaujon, Paris"
)
file = URI.open('https://cdn.motor1.com/images/mgl/xMXjw/s1/volvo-v40.webp')
volvov40.photos.attach(io: file, filename: 'volvo.webp', content_type: 'image/webp')
volvov40.save!
puts"#{volvov40.brand} has been created"

audirs6 = Car.new(
  brand: "Audi",
  year: 2020,
  engine: "V8 4.0 TFSI 605HP",
  color: "nardo grey",
  car_type: "Break",
  model: "RS6",
  address: "42 rue de l'eglise, Paris"
)
file = URI.open('https://sport-auto.ch/essais/wp-content/uploads/2020/09/Audi-RS6-C8-112.jpg')
audirs6.photos.attach(io: file, filename: 'audi.jpg', content_type: 'audi/jpg')
file = URI.open('https://i.gaw.to/content/photos/38/89/388916_2020_Audi_A6.jpg')
audirs6.photos.attach(io: file, filename: 'audi.jpeg', content_type: 'audi/jpeg')
audirs6.save!
puts "#{audirs6.brand} has been created"

mercedesslk = Car.new(
  brand: "Mercedes",
  year: 2005,
  engine: "V8 55 AMG 360HP",
  color: "green",
  car_type: "Roadster",
  model: "SLK",
  address: "57 rue des Belles feuilles, Paris"
)
file = URI.open('https://cdn.classic-trader.com/I/images/1920_1920_inset/vehicle_ad_standard_image_fd7fbf0f2c434f0df8532523522ece8a.jpg')
mercedesslk.photos.attach(io: file, filename: 'classic-trader.jpg', content_type: 'classic-trader/jpg')
mercedesslk.save!
puts "#{mercedesslk.brand} has been created"

fordgt = Car.new(
  brand: "Ford",
  year: 2004,
  engine: "V8 5.4 550 HP",
  color: "White and Red",
  car_type: "Supercar",
  model: "GT",
  address: "9 rue Nicolo, Paris"
)
file = URI.open('https://www.topcarrating.com/ford/2004-ford-gt.jpg')
fordgt.photos.attach(io: file, filename: 'ford-gt.jpg', content_type: 'ford-gt/jpg')
fordgt.save!
puts "#{fordgt.brand} has been created"

renaultclio2rs = Car.new(
  brand: "Renault",
  year: 2004,
  engine: "4 cylinder 2.0 172HP",
  color: "Classic grey",
  car_type: "City sports car",
  model: "2RS",
  address: "620 chemin de rabiac estagnol, Antibes"
)

file = URI.open('https://storage.googleapis.com/benzin/lead/original/img_5dc43bc4ad3c1.jpg')
renaultclio2rs.photos.attach(io: file, filename: '2rs/jpg', content_type: '2rs/jpg')
renaultclio2rs.save!
puts "#{renaultclio2rs.brand} has been created"

porsche356 = Car.new(
  brand: "Porsche",
  year: 1948,
  engine: "4 cylinder 1.0 40HP",
  color: "Blue",
  car_type: "Oldtimer",
  model: "356",
  address: "82 avenue de villiers, Paris"
)

file = URI.open('https://www.classicnumber.com/images/stories/expautos/images/big/87898_1655304289_faa371a6.jpg')
porsche356.photos.attach(io: file, filename:'356/jpg', content_type: '356/jpg')
file = URI.open('https://files.porsche.com/filestore/image/multimedia/none/rd-2014-porscheclassic-models-356-a-banner/normal/4e0c1211-7bdb-11e4-bbba-001a64c55f5c/porsche-normal.jpg')
porsche356.photos.attach(io: file, filename: '356C/jpeg', content_type: '356C/jpeg')
porsche356.save!

puts "#{porsche356.brand} has been created"

astonmartinAMR = Car.new(
  brand: "Aston Martin",
  year: 2020,
  engine: "V8 4.0 503HP",
  color: "Grey",
  car_type: "GT",
  model: "Vantage AMR",
  address: "19 rue du docteur blanche, Paris"
)
file = URI.open('https://www.topgear.com/sites/default/files/images/cars-road-test/2019/10/e503f0a435284e30a5a9552986f4a075/aston-martin-vantage-amr-59-edition-photo-max-earey-122lead.jpg')
astonmartinAMR.photos.attach(io: file, filename: 'aston/jpg', content_type: 'aston/jpg')
astonmartinAMR.save!

puts "#{astonmartinAMR.brand} has been created"

porsche959 = Car.new(
  brand: "Porsche",
  year: 1989,
  engine: "6 cylinder",
  color: "bordeau red",
  car_type: "Hypercar",
  model: "959",
  address: "5 rue albert gos, Genève"
)

file = URI.open('https://i.gaw.to/content/photos/51/24/512482-2-7-millions-de-pour-cette-rarissime-porsche-959.jpg')
porsche959.photos.attach(io: file, filename: '959/jpg', content_type: '959/jpg')
porsche959.save!

fordmustang = Car.new(
  brand: "Ford",
  year: 2007,
  engine: "V8 5.4 500HP",
  color: "White and Red",
  car_type: "Sportcar",
  model: "Mustang",
  address: "24 avenue peschier, Genève"
)

file = URI.open('https://www.421chevaux.com/wp-content/uploads/2020/08/2007-Ford-Mustang-Shelby-GT500-I-AM-LEGEND-01.jpg')
fordmustang.photos.attach(io: file, filename: 'mustang/jpg', content_type: 'mustang/jpg')
fordmustang.save!

puts "#{fordmustang.brand} has been created"

dodgechallengerstr = Car.new(
  brand: "Dodge",
  year: 2020,
  engine: "V8 6.2 707HP",
  color: "Orange",
  car_type: "Muscle car",
  model: "Challenger SRT",
  address: "7 rue saint dominique, Paris"
)

file = URI.open('https://i.gaw.to/content/photos/43/19/431944-dodge-challenger-super-stock-2021-une-bombe-de-807-chevaux.jpeg')
dodgechallengerstr.photos.attach(io: file, filename: 'dodge/jpeg', content_type: 'dodge/jpeg')
dodgechallengerstr.save!

puts "#{dodgechallengerstr.brand} has been created"

buggatimistral = Car.new(
  brand: "Buggati",
  year: 2022,
  engine: "W16 8.0 1600HP",
  color: "Black",
  car_type: "Hypercar",
  model: "Mistral",
  address: "9 rue beaujon, Paris"
)

file = URI.open('https://cdn.motor1.com/images/mgl/Kbbey1/s1/bugatti-mistral-convertible-at-the-quail.jpg')
buggatimistral.photos.attach(io: file, filename: 'mistral/jpg', content_type: 'mistral/jpg')
buggatimistral.save!

puts "#{buggatimistral.brand} has been created"


audir8 = Car.new(
  brand: "Audi",
  year: 2021,
  engine: "V10 5.2 620HP",
  color: "Blue",
  car_type: "Supercar",
  model: "R8",
  address: "19 rue du docteur blanche, Paris"
)

file = URI.open('https://mediaservice.audi.com/media/fast/H4sIAAAAAAAAAFvzloG1tIiBOTrayfuvpGh6-m1zJgaGigIGBgZGoDhTtNOaz-I_2DhCHkCFmXgZWMpTkwoYgSrcmLgycxPTU_VBArz____nZ-QustBNrSjRzUvNzWcHKhHgiZsfe9Uw6_id7Q-9vswPcnnBfueZOAOP5I12FrNLew-2znNlmMC35scXWVYfBp6sOCv-BSx1_1-L8JvPuG68K8hVvoiBh9f49pwf_1hm6n1-qKV63_sZxwY3bQYezxPHYsp277nnoB_xbvbVd-4HDeMKGHjOfpJ78NA382i2s5E869KwRwk889oYeI4tVH7z_F72DJtF-Qyn-Zb8-_DsL9C2U3Zr9xaarlIs19_0YptWY2VnyZfZQFGn2VdPC576LXf72XaNeWvun2CJEmLgaVeQrJC78Mcr4c3FV592vmfuWfwE6AaX0tKrLV_uxe3h3_X9xueD1UtMQjYx8LTFiJeLlJoLxhTfSn_XvsyMQ4w5g4FnZfoxJdUTV-Qqpri3zlOTFVr86qQ3A4_s8c5DK7qYXwRGnX101vHM8sWfKgwZeF5PrfVbU6byMkZor4yFq1WpXXTmbgaezqvuL1OCY2bySPNkebybPC-Gaek5BlZgRDDtBhIscUCC5wmQ4LBhAJOgKNoAJBgXgvis9cwMDNwODAxsIQwgwCdcWpRTkFiUmKtXlFpckJ9XnFmWKqhhQCQQZvVxjHQNAgCPZrHmQAIAAA?mimetype=image/png')
audir8.photos.attach(io: file, filename: 'audir8/jpg', content_type: 'audir8/jpg')
audir8.save!

puts "#{audir8.brand} has been created"

puts 'Finished!'
