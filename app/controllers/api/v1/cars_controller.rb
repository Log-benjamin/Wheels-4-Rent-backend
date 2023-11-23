class Api::V1::CarsController < ApplicationController
  before_action :set_car, only: %i[show destroy]

  # GET /api/v1/cars
  def index
    @cars = Car.all
    render json: @cars
  end

  # GET /api/v1/cars/1
  def show
    render json: @car
  end

  # POST /api/v1/cars
  def create
    @car = Car.new(car_params)

    if @car.save
      render json: { status: 200, car: @car }
    else
      render json: { status: 404, errorMessage: @car.errors.full_messages.to_sentence }
    end
  end

  # Delete /api/v1/cars/1
  def destroy
    if @car.destroy
      render json: { id: @car.id }
    else
      render json: { error: 'fail to delete the car', status: :unprocessable_entity }
    end
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:name, :model, :description, :image, :price_per_day, :seating_capacity)
  end
end
