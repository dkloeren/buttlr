class Review < ApplicationRecord
  belongs_to :booking

  validates :rating, inclusion: {
    in: [0, 1, 2, 3, 4, 5],
    message: "%<value>s is outside of range. Rating must be 0 - 5"
  }
end
