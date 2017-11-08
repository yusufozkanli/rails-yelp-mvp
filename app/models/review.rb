class Review < ApplicationRecord
  validates :content, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: [0,1,2,3,4,5],
    message: "%{value} is not a valid rating" }
  belongs_to :restaurant
end
