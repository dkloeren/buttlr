class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :bookings
  has_many :reviews, through: :bookings
  has_many :customer, through: :bookings, source: :users

  validates :start, presence: true
  validates :end, presence: true
end
