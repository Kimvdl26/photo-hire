class Artist < ApplicationRecord
  belongs_to :user

  has_many :artworks, dependent: :destroy
  has_many :availabilities
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  validates :description, presence: { message: "Please enter a description" }
  validates :location, presence: { message: "Please enter a location" }
  validates :hourly_rate, presence: { message: "Please enter an hourly rate" }
  validates :user_id, presence: { message: "Not a valid user" }
end
