class Booking < ApplicationRecord
  belongs_to :user
  has_many :reviews

  validates :user_id, presence: true
  validates :date, presence: true
end
