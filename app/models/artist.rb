class Artist < ApplicationRecord
  belongs_to :user

  has_many :artworks
  has_many :availabilities
  has_many :bookings

  validates :user_id, uniqueness: true
end
