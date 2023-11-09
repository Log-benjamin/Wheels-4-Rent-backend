class Reservation < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :car, class_name: 'Car', foreign_key: 'car_id'
end
