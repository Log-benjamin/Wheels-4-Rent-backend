# spec/factories/reservation.rb

FactoryBot.define do
  factory :reservation do
    start_date { '2023-11-30' }
    end_date { '2023-12-10' }
    city { 'Milan Italy' }
    days { 10 }
    user_id { 1 }
    car_id { 3 }
  end
end
