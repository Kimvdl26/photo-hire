class Availability < ApplicationRecord
  belongs_to :artist

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :artist_id, presence: true
end
