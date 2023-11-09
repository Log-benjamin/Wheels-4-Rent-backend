class Car < ApplicationRecord
  has_many :reservations, dependent: :destroy

  validates :name, presence: true
  validates :model, presence: true
  validates :description, presence: true
  validates :image, presence: true
  validates :price_per_day, presence: true, numericality: { greater_than: 0 }
end
