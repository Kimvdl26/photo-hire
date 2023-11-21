# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Destroying entries..."
Review.destroy_all
Booking.destroy_all
Artist.destroy_all
User.destroy_all

puts "Making entries..."
puts user_one = User.create(
  email: "bifiyo7473@ikanid.com",
  password: "123456",
  first_name: "Charles",
  last_name: "Moreno",
  is_artist: false
)

puts "#{user_one} <- Userone created"

User.create(
  email: "bifiyo7476@ikanid.com",
  password: "78910",
  first_name: "Sarah",
  last_name: "Wilk",
  is_artist: false
)

User.create(
  email: "bifiyo7480@ikanid.com",
  password: "111213",
  first_name: "Kaia",
  last_name: "Banderas",
  is_artist: false
)

puts Booking.create(
  user: User.first,
  date: "21/12/23",
  status: "Accepted"
)

Booking.create(
  user: User.second,
  date: "12/06/23",
  status: "Pending"
)

Booking.create(
  user: User.third,
  date: "21/04/23",
  status: "Accepted"
)

puts Artist.create(
  user: User.first,
  description: "Bring the world to your home",
  personality: "Natural and simple",
  style: "Modern",
  location: "Amsterdam",
  hourly_rate: 50
)

Artist.create(
  user: User.second,
  description: "Joy through colour",
  personality: "Vibrant and energetic",
  style: "Color pop",
  location: "Ghana",
  hourly_rate: 100
)

Artist.create(
  user: User.third,
  description: "Missing Italian breakfasts, lunches and dinners",
  personality: "Elegant and sophisticated",
  style: "Romantic",
  location: "Mexico City",
  hourly_rate: 150
)

Review.create(
  booking: Booking.first,
  content: "It was a nice experience, would recommend!",
  rating: 5
)

Review.create(
  booking: Booking.second,
  content: "Great experience, would recommend!",
  rating: 5
)

Review.create(
  booking: Booking.third,
  content: "Ok experience, would not recommend!",
  rating: 5
)

puts "Entries Done!"

# User.create(
#   email: user["email"],
#   password: user["password"],
#   password_confirmation: user["password_confirmation"],
#   first_name: user["first_name"],
#   last_name: user["last_name"],
#   role: user["role"],
# )

# Booking.create(
#   user_id: booking["user_id"],
#   artist_id: booking["artist_id"],
#   date: booking["date"],
#   status: booking["status"],
# )
