class Api::V1::CarsController < ApplicationController
  before_action :set_car, only: %i[show]
  # GET /cars
  def index
    @cars = Car.all
    render json: @cars
  end

  # GET /cars/1
  def show
    render json: @car
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end
end
