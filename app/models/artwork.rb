class Artwork < ApplicationRecord
  belongs_to :artist
  has_many_attached :artworks

  validates :artist_id, presence: true
end
