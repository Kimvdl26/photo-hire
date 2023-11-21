class Artwork < ApplicationRecord
  belongs_to :artist
  has_one_attached :artwork

  validates :artist_id, presence: true

end
