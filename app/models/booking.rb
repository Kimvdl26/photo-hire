class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :artist

  has_many :reviews

  validates :user_id, presence: true
  validates :artist_id, presence: true
  validates :date, presence: true
  validates :status, presence: true
end
