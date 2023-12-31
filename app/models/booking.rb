class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :artist

  has_many :reviews, dependent: :destroy
  validates :status, presence: true, inclusion: { in: ["pending", "accepted", "rejected"] }
  validates :user_id, presence: true
  validates :artist_id, presence: true
  validates :date, presence: { message: "Please select a date." }
end
