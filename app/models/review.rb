class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, numericality: { only_integer: true }, inclusion: { in: [0, 1, 2, 3, 4, 5], message: 'Too much' }, presence: true
  validates :content, presence: true

end
