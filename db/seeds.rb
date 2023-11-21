# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "open-uri"

Travel.destroy_all
User.destroy_all

  #USERS#

user_1 = User.create!(
  email: "howard.carter@proton.me",
  password: "7xXkS5gYMdD3WXON",
  first_name: "Howard",
  last_name: "Carter"
  )

user_2 = User.create!(
  email: "godefroy.demontmirail@proton.me",
  password: "Gf7eDQC5XOfzsSw8",
  first_name: "Godefroy",
  last_name: "Demontmirail"
  )

  user_3 = User.create!(
  email: "maximilien.robespierre@proton.me",
  password: "7MaDGtc1PpmL4Sah",
  first_name: "Maximilien",
  last_name: "Robespierre"
  )

  user_4 = User.create!(
  email: "luke.skywalker@proton.me",
  password: "QUQZH4nvdqHD82d6",
  first_name: "Luke",
  last_name: "Skywalker"
  )

  user_5 = User.create!(
  email: "steven.spielberg@proton.me",
  password: "4zPd0aToz6NMpbcK",
  first_name: "Steven",
  last_name: "Spielberg"
  )

  user_6 = User.create!(
  email: "jules.cesar@proton.me",
  password: "9YNv9Rc5OLgTty1s",
  first_name: "Jules",
  last_name: "Cesar"
  )

  user_7 = User.create!(
  email: "musashi.miyamoto@proton.me",
  password: "SXUDGcoMw7dby6tf",
  first_name: "Musashi",
  last_name: "Miyamoto"
  )

  user_8 = User.create!(
  email: "montezuma.tenochticlan@proton.me",
  password: "YjsQZXq1bLC9cn7y",
  first_name: "Montezuma",
  last_name: "Tenochticlan"
  )

  user_9 = User.create!(
  email: "sergio.leone@proton.me",
  password: "24olAEtCQT334Mhj",
  first_name: "Sergio",
  last_name: "Leone"
  )

  user_10 = User.create!(
    email: "jack.sparrow@proton.me",
    password: "H2q7QK1OBDlmhBhX",
    first_name: "Jack",
    last_name: "Sparrow"
    )


  #TRAVELS#

#1 Ancient Egypt
travel_1 = Travel.create!(
  name: "Mysteries of ancient Egypt!",
  address: "Louxor - Egypt",
  period: "Antiquity",
  perilousness: 5,
  description: "An awesome travel through the mysteries of ancient egypt, including pyramids, tombs and pharaoh meeting!",
  price: 50000,
  duration: 3,
  number_of_travelers: 4,
  user_id: user_1.id
)

file = URI.open("http://res.cloudinary.com/dfcjcar1z/image/upload/v1700566497/ibqjgbmf5gvuovrradtp.png")
travel_1.picture.attach(io: file, filename: "1_Ancient_Egypt.png", content_type: "image/png")
travel_1.save!

#2 Medieval Europe
travel_2 = Travel.create!(
  name: "Journey through Medieval Europe",
  address: "Fougères - France",
  period: "Middle Age",
  perilousness: 4,
  description: "Embark on a captivating journey through Medieval Europe. Visit ancient castles, witness knights in shining armor, and experience the rich tapestry of medieval life.",
  price: 65000,
  duration: 4,
  number_of_travelers: 7,
  user_id: user_2.id
)

file = URI.open("http://res.cloudinary.com/dfcjcar1z/image/upload/v1700577650/i25y5lsibwynmuyew5yx.png")
travel_2.picture.attach(io: file, filename: "2_Middle_Age.png", content_type: "image/png")
travel_2.save!

#3 French Revolution
travel_3 = Travel.create!(
  name: "Revolutionary Paris Experience",
  address: "Paris - France",
  period: "French Revolution",
  perilousness: 9,
  description: "Immerse yourself in the turbulent times of the French Revolution in the heart of Paris. Explore historic landmarks, witness revolutionary events, and discover the spirit of liberty, equality, and fraternity.",
  price: 72000,
  duration: 6,
  number_of_travelers: 2,
  user_id: user_3.id
)

file = URI.open("http://res.cloudinary.com/dfcjcar1z/image/upload/v1700577876/zotuhyanzauz61ap2bjn.png")
travel_3.picture.attach(io: file, filename: "3_french_revolution.png", content_type: "image/png")
travel_3.save!

#4 Futuristic city
travel_4 = Travel.create!(
  name: "Futuristic City Exploration",
  address: "Neo-Boston - USA",
  period: "Futuristic",
  perilousness: 0,
  description: "Embark on a journey to Neo-Tokyo, a futuristic city with cutting-edge technology and breathtaking skyscrapers. Experience the marvels of the future, from advanced robotics to innovative architecture.",
  price: 80000,
  duration: 7,
  number_of_travelers: 3,
  user_id: user_4.id
)

file = URI.open("http://res.cloudinary.com/dfcjcar1z/image/upload/v1700577988/n9ygtac6s9ulzmccixpo.png")
travel_4.picture.attach(io: file, filename: "4_futur.png", content_type: "image/png")
travel_4.save!


#5 Dinosaur era / Prehistory
travel_5 = Travel.create!(
  name: "Dinosaur Expedition: Lost World Adventure",
  address: "Jurassic Park - Isla Nublar",
  period: "Dinosaur Era",
  perilousness: 5,
  description: "Embark on an extraordinary adventure to the prehistoric world of dinosaurs. Witness majestic creatures, explore lush landscapes, and uncover the mysteries of the ancient Earth.",
  price: 90000,
  duration: 8,
  number_of_travelers: 8,
  user_id: user_5.id
)

file = URI.open("http://res.cloudinary.com/dfcjcar1z/image/upload/v1700579945/amz9rko2hyuci2wjzz6j.png")
travel_5.picture.attach(io: file, filename: "5_dinosaurs.png", content_type: "image/png")
travel_5.save!

#6 Roman Empire
travel_6 = Travel.create!(
  name: "Glory of Rome: Imperial Tour",
  address: "Rome - Italy",
  period: "Roman Empire",
  perilousness: 4,
  description: "Step back in time to the grandeur of the Roman Empire. Visit ancient colosseums, walk through historical forums, and experience the architectural marvels of a once-mighty civilization.",
  price: 75000,
  duration: 6,
  number_of_travelers: 4,
  user_id: user_6.id
)

file = URI.open("http://res.cloudinary.com/dfcjcar1z/image/upload/v1700584385/epkhcdk8c9ih1e6afbhu.png")
travel_6.picture.attach(io: file, filename: "6_roma.png", content_type: "image/png")
travel_6.save!

#7 Medieval Japan
travel_7 = Travel.create!(
  name: "Samurai Quest: Medieval Japan Adventure",
  address: "Kyoto - Japan",
  period: "Medieval Japan",
  perilousness: 3,
  description: "Journey to medieval Japan and explore the world of samurai and ninja. Visit ancient temples, witness traditional martial arts, and immerse yourself in the rich cultural heritage of Japan's feudal era.",
  price: 68000,
  duration: 5,
  number_of_travelers: 4,
  user_id: user_7.id
)

file = URI.open("http://res.cloudinary.com/dfcjcar1z/image/upload/v1700584441/fbkp7subj8jk5nwpg1s0.png")
travel_7.picture.attach(io: file, filename: "7_japan.png", content_type: "image/png")
travel_7.save!

#8 Mexican Aztec Empire
travel_8 = Travel.create!(
  name: "Aztec Legacy: Greatness of Ancient Mexico",
  address: "Tenochtitlan - Mexico",
  period: "Mexican Aztec Empire",
  perilousness: 4,
  description: "Discover the secrets of the ancient Aztec civilization in the heart of Mexico. Explore monumental pyramids, witness colorful ceremonies, and unravel the mysteries of this fascinating empire.",
  price: 72000,
  duration: 7,
  number_of_travelers: 6,
  user_id: user_8.id
)

file = URI.open("http://res.cloudinary.com/dfcjcar1z/image/upload/v1700584462/gdbvlwzkft1nqyxw6iva.png")
travel_8.picture.attach(io: file, filename: "8_aztec.png", content_type: "image/png")
travel_8.save!

#9 American Gold Rush
travel_9 = Travel.create!(
  name: "Gold Fever Trail: American West Adventure",
  address: "California - USA",
  period: "American Gold Rush",
  perilousness: 5,
  description: "Relive the excitement of the American Gold Rush. Traverse the rugged landscapes of California, pan for gold in riverbeds, and experience the challenges and rewards of the frontier era.",
  price: 80000,
  duration: 6,
  number_of_travelers: 4,
  user_id: user_9.id
)

file = URI.open("http://res.cloudinary.com/dfcjcar1z/image/upload/v1700584480/ghyjt3hcy8sqcbokf8nm.png")
travel_9.picture.attach(io: file, filename: "9_cowboys.png", content_type: "image/png")
travel_9.save!

#10 Caribbean Pirate Gold Era
travel_10 = Travel.create!(
  name: "Pirate's Bounty: Caribbean Treasure Hunt",
  address: "Tortuga - Caribbean",
  period: "Caribbean Pirate Gold Era",
  perilousness: 10,
  description: "Sail the high seas of the Caribbean during the golden age of piracy. Join a crew of swashbucklers, search for buried treasure, and experience the thrill of life as a pirate.",
  price: 100000,
  duration: 9,
  number_of_travelers: 6,
  user_id: user_10.id
)

file = URI.open("http://res.cloudinary.com/dfcjcar1z/image/upload/v1700584507/wcqgzpektgyjkj2tcjx0.png")
travel_10.picture.attach(io: file, filename: "10_pirate.png", content_type: "image/png")
travel_10.save!
