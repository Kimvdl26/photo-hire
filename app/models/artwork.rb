class Artwork < ApplicationRecord
  belongs_to :artist

  validates :artist_id, presence: true

end
