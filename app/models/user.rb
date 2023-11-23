class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :artist
  has_many :bookings
  has_one_attached :user_avatar
  validates :email, presence: true, uniqueness: true
end
