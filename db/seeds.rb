# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Artist.new (
  user_id: 1,
  artist_avatar: "https://images.unsplash.com/photo-1497316730643-415fac54a2af?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  description: "Bring the world to your home",
  personality: "Natural and simple",
  style: "Modern",
  location: "Amsterdam"
)

Artist.new(
  user_id: 2,
  artist_avatar: "https://plus.unsplash.com/premium_photo-1675130119373-61ada6685d63?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  description: "Joy through colour",
  personality: "Vibrant and energetic",
  style: "Color pop",
  location: "Ghana"
)

Artist.new (
  user_id: 3,
  artist_avatar: "https://plus.unsplash.com/premium_photo-1675034372421-91ab1a16c982?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
  description: "Missing Italian breakfasts, lunches and dinners",
  personality: "Elegant and sophisticated",
  style: "Romantic",
  location: "Mexico City"
)

Artwork.new(
  artist_id: 1,
  artwork: "https://www.bulgarihotels.com/.imaging/bhr-wide-big-jpg/dam/arteit/93807---jimmy-nelson%2C-the-traveling-native/format-2560x1600-93807/jcr%3Acontent"
)

Artwork.new(
  artist_id: 2,
  artwork: "https://homecoming.gallery/cdn/shop/products/lemonjoy2_1024x1024.jpg?v=1669210647"
)

Artwork.new(
  artist_id: 3,
  artwork: "https://images-prod.anothermag.com/478/azure/another-prod/420/8/428768.jpg"
)
