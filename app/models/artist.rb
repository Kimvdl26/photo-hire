class Artist < ApplicationRecord
  belongs_to :user

  has_many :artworks
  has_many :availabilities

  validates :artist_avatar, presence: true, uniqueness: true
  validates :decription, length: { minimum: 10 }
end
