# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.new(
  email: "bifiyo7473@ikanid.com",
  password: "123456",
  password_confirmation: "123456",
  first_name: "Charles",
  last_name: "Moreno",
)

User.new(
  email: "bifiyo7476@ikanid.com",
  password: "78910",
  password_confirmation: "78910",
  first_name: "Sarah",
  last_name: "Wilk",
)

User.new(
  email: "bifiyo7480@ikanid.com",
  password: "111213",
  password_confirmation: "111213",
  first_name: "Kaia",
  last_name: "Banderas",
)

Booking.new(
  date: "21/12/23",
  status: "Accepted"
)

Booking.new(
  date: "12/06/23",
  status: "Declined"
)

Booking.new(
  date: "21/04/23",
  status: "Accepted"
)

# User.new(
#   email: user["email"],
#   password: user["password"],
#   password_confirmation: user["password_confirmation"],
#   first_name: user["first_name"],
#   last_name: user["last_name"],
#   role: user["role"],
# )

# Booking.new(
#   user_id: booking["user_id"],
#   artist_id: booking["artist_id"],
#   date: booking["date"],
#   status: booking["status"],
# )
