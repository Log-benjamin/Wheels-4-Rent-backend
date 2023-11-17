class Reservation < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :car, class_name: 'Car', foreign_key: 'car_id'

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :user_id, presence: true
  validates :car_id, presence: true
end
