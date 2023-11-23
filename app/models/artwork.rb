class Artwork < ApplicationRecord
  belongs_to :artist
  has_many_attached :artworks

  def artworks=(attachables)
    attachables = Array(attachables).compact_blank

    if attachables.any?
      attachment_changes["artworks"] =
        ActiveStorage::Attached::Changes::CreateMany.new("artworks", self, artworks.blobs + attachables)
    end
  end

  validates :artist_id, presence: true
end
