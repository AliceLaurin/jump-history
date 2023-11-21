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

egypt_picture_1 = cl_image_tag("ibqjgbmf5gvuovrradtp"),

user_1 = User.create(
  email: "howard.carter@proton.me",
  encrypted_password: "7xXkS5gYMdD3WXON",
  first_name: "Howard",
  last_name: "Carter",
)
user_1.save!

travel_1 = Travel.create(
  name: "Mysteries of ancient Egypt!",
  picture: egypt_picture_1,
  adress: "Louxor - Egypt",
  period: "Antiquity",
  perilousness: "Average",
  description: "An awesome travel through the mysteries of ancient egypt, including pyramids, tombs and pharaoh meeting!",
  price: 50000,
  duration: 3,
  numbers_of_travelers: 4,
  user_id: user_1
)
travel_1.save!

