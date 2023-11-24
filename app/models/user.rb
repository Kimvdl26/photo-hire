class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :artist, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :artworks, through: :artist
  has_one_attached :user_avatar, dependent: :destroy
  validates :email, presence: true, uniqueness: true
end
