class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  a = %w[chinese italian japanese french belgian]
  validates :category, inclusion: { in: a, meesage: 'Not available category' }
  validates :name, :address, :phone_number, :category, presence: true
end
