# spec/factories/cars.rb

FactoryBot.define do
  factory :car do
    name { "Honda" }
    model { "2023 model" }
    description { "Amazing car" }
    image { "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/..." }
    seating_capacity { 5 }
    price_per_day { 400 }
  end
end
