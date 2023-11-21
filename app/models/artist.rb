class Artist < ApplicationRecord
  belongs_to :user

  has_many :artworks
  has_many :availabilities

  validates :description, length: { minimum: 10 }
end
