class Artist < ApplicationRecord
  belongs_to :user

  has_many :artworks
  has_many :availabilities

  validates :artist_avatar, presence: true
end
