class Review < ApplicationRecord
  belongs_to :booking

  validates :booking_id, presence: true
  validates :rating, presence: true, :inclusion => { :in => 0..5, :message => " should be between 0 to 5" }
  validates :content, presence: true, :length => {
    :minimum   => 10,
    :maximum   => 100,
  }
end
