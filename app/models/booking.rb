class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :offer

  has_one :review

  validates :start, presence: true
  validates :end, presence: true
  validates :status, inclusion: { in: %w[pending confirmed rejected ended], message: "%<value>s is invalid." }
end
